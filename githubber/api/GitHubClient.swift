//
//  GitHubClient.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

class GitHubClient {
    private let configuration: EndpointConfiguration!
    private let httpClient: HTTPClient!
    
    init(_ configuration: EndpointConfiguration) {
        self.configuration = configuration
        self.httpClient = HTTPClient()
    }
    
    func request(request: Request,
                 success: ((Any) -> Void)? = nil,
                 failure: ((Error) -> Void)? = nil) {
        let url = configuration.baseURL.appendingPathComponent(request.endpoint)
        
        httpClient.request(url: url, method: request.method, parameters: request.parameters, parametersInUrl: true, headers: request.headers, success: { (data) in
            
            }) { (data, error, code) in
                
        }
    }
}
