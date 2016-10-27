//
//  User.swift
//  githubber
//
//  Created by Piotr Żużel on 27/10/16.
//  Copyright © 2016 Piotr Żużel. All rights reserved.
//

import Foundation

class User: GitHubObject {
    var id: Int = 0
    var url: URL = URL(string: "")!
    var login: String?
    var avatarURL: URL?
    
}
