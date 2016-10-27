//
//  GitHubEndpointConfiguration.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

final class GitHubEndpointConfiguration : EndpointConfiguration {
    var baseURL: URL

    init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
    public static let shared = GitHubEndpointConfiguration(baseURL: URL(string: "https://api.github.com")!)
}
