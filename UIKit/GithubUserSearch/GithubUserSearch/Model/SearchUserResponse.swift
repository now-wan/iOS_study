//
//  SearchUserResponse.swift
//  GithubUserSearch
//
//  Created by 이제완 on 2022/12/10.
//

import Foundation

struct SearchUserResponse: Decodable {
    var items: [SearchResult]
}
