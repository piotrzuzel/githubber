//
//  GitHubRequest.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

protocol Request {
    var endpoint: String {get}
    var method: HTTPClient.Method {get}
    var parameters: [String: Any]? {get}
    var headers: [String: String]? {get}
}
