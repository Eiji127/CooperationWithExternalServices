//
//  URLRequest.swift
//  CooperationWithExternalServices
//
//  Created by 白数叡司 on 2021/04/12.
//

import Foundation

let url = URL(string: "https://api.github.com/search/repositories?q=swift")!
var urlRequest = URLRequest(url: url)
urlRequest.httpMethod = "GET"
// addValue(_:forHTTPHeaderField:)メソッドを用いてAcceptヘッダを設定
urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")

// URLSessionクラスでサーバに送信されるときのHTTPリクエスト(urlRequest)↓
/*
 GET /search/repositories HTTP/1.1
 Host: api.github.com
 Accept: application/json
 Accept-Encoding: gzip, deflate
 Accept-Language: ja-jp
 Connection: keep-alive
 User-Agent: Demo/1 CFNetwork/760.1.2 Darwin/15.0.0 (x86_64)  ← クライアントのソフトウェア情報
 */
