//
//  GitHubObject.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

protocol GitHubObject {
    var id : Int {get set}
    var url : URL {get set}
}

