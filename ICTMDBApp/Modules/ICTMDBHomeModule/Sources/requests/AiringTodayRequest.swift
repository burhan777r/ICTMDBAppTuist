//
//  AiringTodayRequest.swift
//  ICTMDBHomeModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import NetworkManagerKit
// MARK: AiringTodayRequest
struct AiringTodayRequest: NetworkRequest {
    
    typealias Response = DataResult<AiringToday>
    var language: RequestLanguage
    var page: Int
  
    var path: NetworkPath { .airingToday }
    var method: AlamofireMethod { .GET }
    
    var headers: [String: String]?
    
    var parameters: [String: Any]? {
        [
            "language": language,
            "page": page
        ]
    }
}
