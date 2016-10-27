//
//  EndpointConfiguration.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

protocol EndpointConfiguration {
    var baseURL: URL {get}
    
    init(baseURL: URL)
}
