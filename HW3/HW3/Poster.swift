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

func findRepositories(matching query: String) {
    let api = "https://api.github.com"
    let endpoint = "/search/repositories?q=\(query)"
    let url = URL(string: api + endpoint)
}
