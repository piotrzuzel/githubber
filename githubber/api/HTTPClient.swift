//
//  HTTPClient.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

extension Dictionary where Key: ExpressibleByStringLiteral, Value:Any {
    var urlKeyValue: String {
        get{
            return (self.flatMap({ (key, value) -> String in
                return "\(key)=\(value)"
            }) as Array).joined(separator: "&")
        }
    }
}

class HTTPClient{
    enum Method: String {
        case GET, POST, PUT, DELETE
    }
    
    private let successCodes: Range<Int> = 200..<299
    private let failureCodes: Range<Int> = 400..<499
    var timeoutInterval: TimeInterval = 10.0
    
    private var task: URLSessionDataTask?
    
    func request(url: URL,
                 method: Method,
                 parameters: [String: Any]? = nil,
                 parametersInUrl: Bool = false,
                 headers: [String: String]? = nil,
                 success: ((Data?) -> Void)? = nil,
                 failure: ((_ data: Data?, _ error: NSError, _ responseCode: Int) -> Void)? = nil){
        
        var mutableRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: self.timeoutInterval)
        mutableRequest.allHTTPHeaderFields = headers
        mutableRequest.httpMethod = method.rawValue
        
        if (parameters != nil) {
            if parametersInUrl {
                let paramsString = parameters?.urlKeyValue
                mutableRequest.url = mutableRequest.url?.appendingPathComponent("?"+paramsString!)
            } else {
                mutableRequest.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
            }
        }
        
        
        let session = URLSession.shared
        task = session.dataTask(with: mutableRequest, completionHandler: { (data, response, error) in
            success?(data)
        })
        
        task?.resume()
        
    }
    
    func cancel() {
        task?.cancel()
    }
}
