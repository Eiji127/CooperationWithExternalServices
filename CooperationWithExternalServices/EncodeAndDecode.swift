//
//  main.swift
//  CooperationWithExternalServices
//
//  Created by 白数叡司 on 2021/04/12.
//

import Foundation

let encoder = JSONEncoder()
let decoder = JSONDecoder()

let encoded = try encoder.encode(["key": "value"])
let jsonString = String(data: encoded, encoding: .utf8)!
print("エンコード結果：\(jsonString)")

let decoded = try decoder.decode([String: String].self, from: encoded)
print("デコード結果 : \(decoded)")

// 出力結果
// エンコード結果：{"key":"value"}
// デコード結果：["key": "value"]
