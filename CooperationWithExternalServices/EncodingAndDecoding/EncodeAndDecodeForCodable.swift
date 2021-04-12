//
//  EncodeAndDecodeForCodable.swift
//  CooperationWithExternalServices
//
//  Created by 白数叡司 on 2021/04/12.
//

import Foundation

struct SomeStruct: Codable {
    let value: Int
}

let someStruct = SomeStruct(value: 1)

let jsonEncoder = JSONEncoder()
let encoderdJSONData = try! JSONEncoder.encode(someStruct)
let encodedJSONString = String(data: encoderdJSONData, encoding: .utf8)!
print("Encoded:", encodedJSONString)

let jsonDecoder = JSONDecoder()
let decodedSomeStruct = try! JSONDecoder.decode(SomeStruct.self, from: encodedJSONString)
print("Decoded:", decodedSomeStruct)

// 出力結果
// Encoded: {"value":1}
// Decoded: SomeStruct(value: 1)
