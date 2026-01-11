//
//  PopularMoviesRequest.swift
//  ICTMDBHomeModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import NetworkManagerKit
// MARK: PopularMoviesRequest
struct PopularMoviesRequest: NetworkRequest {
    typealias Response = DataResult<PopularTvShows>
    var language: RequestLanguage
    var page: Int
  
    var path: NetworkPath { .popular }
    var method: AlamofireMethod { .GET }
    
    var headers: [String: String]?
    
    var parameters: [String: Any]? {
        [
            "language": language,
            "page": page
        ]
    }
}
