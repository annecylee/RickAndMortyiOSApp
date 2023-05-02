//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Tingwei Li on 4/28/23.
//

import Foundation

struct RMLoaction: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
