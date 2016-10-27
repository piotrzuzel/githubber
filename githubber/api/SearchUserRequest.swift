//
//  SearchUserRequest.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

/// https://developer.github.com/v3/search/#search-users
final class SearchUserRequest: SearchRequest {
    override var endpoint: String{
        return "/search/users"
    }
}
