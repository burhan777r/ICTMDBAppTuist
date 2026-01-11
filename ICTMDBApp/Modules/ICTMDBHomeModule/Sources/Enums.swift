//
//  enums.swift
//  ICTMDBHomeModule
//
//  Created by Engin Gülek on 11.01.2026.
//

enum CellItemType {
    case popular(PopularTVShowPresentation)
    case airing(AiringTodayPresentation)
    case none
}

// MARK: SectionType
enum SectionType: Int, CaseIterable {
    case popular
    case airingToday
}

// MARK: HomePageErrorType
enum HomePageErrorType {
    case popular
    case airingToday
}
