//
//  Album.swift
//  lab-tunley
//
//  Created by bianca nicholson on 9/13/23.
//

import Foundation

struct AlbumSearchResponse: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let poster_path: URL
}
