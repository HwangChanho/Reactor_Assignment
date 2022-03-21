//
//  EndPoint.swift
//  Brandi_Assignment
//
//  Created by AlexHwang on 2022/03/18.
//

import Foundation

enum Endpoint {
    case searchImage(query: String)
}

extension Endpoint {
    var url: URL {
        switch self {
        case .searchImage(let query):
            return .makeEndpoint("/query=\(query)")
        }
    }
}

extension URL {
    static let baseURL = "https://dapi.kakao.com/v2/search/image"
    
    static func makeEndpoint(_ endpoint: String) -> URL {
        URL(string: baseURL + endpoint)!
    }
}
