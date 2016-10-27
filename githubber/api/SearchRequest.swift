//
//  SearchRequest.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

class SearchRequest: Request {
    enum SortOrder: String {
        case asc, desc
    }
    
    internal let sortOrder: SortOrder
    internal let query: String!
    
    init(query: String!, sortOrder: SortOrder) {
        self.query = query
        self.sortOrder = sortOrder
    }
    
    final var method: HTTPClient.Method = .GET
    
    var endpoint: String{
        return "/search"
    }
    
    final var headers: [String : String]?{
        return nil
    }
    
    final var parameters: [String : Any]?{
        return [
            "q" : query,
            "order" : sortOrder.rawValue
        ]
    }
}
