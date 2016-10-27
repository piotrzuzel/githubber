//
//  SearchRepositoryRequest.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

final class SearchRepositoryRequest: SearchRequest {
    override var endpoint: String {
        return "/search/repository"
    }
}
