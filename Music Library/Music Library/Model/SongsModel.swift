//
//  SongsModel.swift
//  Music Library
//
//  Created by 123 on 26.10.22.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    var trackName: String?
}
