//
//  TvShowRequest.swift
//  ICTMDBAllListModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import NetworkManagerKit

enum ListType {
    case popular
    case airingToday
}


struct TvShowRequest: NetworkRequest {
    typealias Response = DataResult<TvShow>
    var language: RequestLanguage
    var page: Int
    var allListType:ListType
    var path: NetworkPath { allListType == .popular ? .popular : .airingToday}
    var method: AlamofireMethod { .GET }
    var headers: [String: String]?
    var parameters: [String: Any]? {
        [
            "language": language,
            "page": page
        ]
    }
}
