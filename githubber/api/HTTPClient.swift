//
//  HTTPClient.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

class HTTPClient{
    enum Method: String {
        case GET, POST, PUT, DELETE
    }
    
    private let successCodes: Range<Int> = 200..<299
    private let failureCodes: Range<Int> = 400..<499
    var timeoutInterval: TimeInterval = 10.0
    
    private var task: URLSessionDataTask?
}
