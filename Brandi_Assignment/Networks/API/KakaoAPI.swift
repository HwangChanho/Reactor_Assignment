//
//  KakaoAPI.swift
//  Brandi_Assignment
//
//  Created by AlexHwang on 2022/03/18.
//

import Foundation

import Alamofire // Used for HttpHeaders
import RxAlamofire
import RxSwift

enum APIError: Error {
    case invalidResponse
    case noData
    case failed
    case invalidData
}

enum UserEnum: Int {
    case success = 200
}

final class KakaoAPI {
    private var disposeBag = DisposeBag()
    
    func getImageFile(searchText: String) {
        let headers: HTTPHeaders = [
            "Authorization": "KakaoAK \(Constants.APIkeys.KakaoRESTAPI)",
            "Content-Type": "multipart/form-data"
        ]
        
        requestJSON(.get, Endpoint.searchImage(query: searchText).url, headers: headers)
                    .map { (response, any) -> String in
                        print(response, any)
                        return ""
                    }
//                    .bind(to: productList)
//                    .disposed(by: disposeBag)
    }
}
