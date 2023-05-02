//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Tingwei Li on 4/28/23.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url:String
    let created: String
}
