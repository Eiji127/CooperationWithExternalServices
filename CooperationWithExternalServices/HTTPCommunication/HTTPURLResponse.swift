//
//  HTTPURLResponse.swift
//  CooperationWithExternalServices
//
//  Created by 白数叡司 on 2021/04/12.
//

import Foundation


let url = URL(string: "https://api.github.com/search/repositories?q=swift")!
var urlRequest = URLRequest(url: url)
let session = URLSession.shared
let task = session.dataTask(with: urlRequest) { (data, urlResponse, error) in
    if let urlResponse = urlResponse as? HTTPURLResponse {
        urlResponse.statusCode // 200
        urlResponse.allHeaderFields["Date"] // "Thu, 16 Jan 2020 14:02:31 GMT"
        urlResponse.allHeaderFields["Content-Type"] // "application/json; charset=utf-8"
    }
}

task.resume()

// HTTPURLResponse型として返ってきたHTTPレスポンス↓
/*
 HTTP/1.1 200 OK
 Transfer-Encoding: chuncked
 Content-Type: application/json; charset=utf-8
 Date: Thu, 16 Jan 2020 14:02:31 GMT
 ~
 ~
 ~
 */
