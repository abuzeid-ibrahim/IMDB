//
//  APIClient.swift
//  IMDB
//
//  Created by abuzeid on 13.08.20.
//  Copyright © 2020 abuzeid. All rights reserved.
//
import Foundation
enum NetworkError: LocalizedError {
    case generalFailure
    case failedToParseData
    case dataIsNil
    case connectionFailed
    case outOfRange
    case apiError(String)
    var errorDescription: String? {
        switch self {
        case .failedToParseData:
            return "Technical Difficults, we can't fetch the data"
        default:
            return "Check your connectivity"
        }
    }
}
