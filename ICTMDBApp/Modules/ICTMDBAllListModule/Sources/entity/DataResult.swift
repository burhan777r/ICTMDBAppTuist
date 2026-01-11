//
//  DataResult.swift
//  ICTMDBAllListModule
//
//  Created by Engin Gülek on 11.01.2026.
//

struct DataResult<T:Codable & Sendable>: Codable , Sendable {
    let page: Int
    let results: [T]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

