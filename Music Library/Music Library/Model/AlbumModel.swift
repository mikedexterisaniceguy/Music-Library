//
//  AlbumModel.swift
//  Music Library
//
//  Created by 123 on 26.10.22.
//

import Foundation

struct AlbumModel: Decodable, Equatable {
    var results: [Album]
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int
}

// https://itunes.apple.com/lookup?id=312911030&entity=song
