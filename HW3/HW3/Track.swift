//
//  Track.swift
//  HW2
//
//  Created by bianca nicholson on 9/11/23.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track: Decodable {
    // Detail properties
    let original_title: String
    let overview: String
    let poster_path: URL
    let popularity: Float
    let vote_average: Float
    let vote_count: Float
}

struct TracksResponse: Decodable {
    let results: [Track]
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(original_title: "Meg 2",
              overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w440_and_h660_face/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
              popularity : 5133.953,
              vote_average: 7,
              vote_count: 157705),

        Track(original_title: "Barbie",
              overview: "Barbie and Ken are havingg the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              popularity: 3712.487,
              vote_average: 7.3,
              vote_count: 157705),

        Track(original_title: "Strays",
              overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
              popularity: 1873.846,
              vote_average: 7.4,
              vote_count: 157705),
        Track(original_title: "The Nun II",
              overview: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
              popularity: 2536.981,
              vote_average: 6.9,
              vote_count: 157705),

        Track(original_title: "Elemental",
              overview: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
              poster_path: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/6oH378KUfCEitzJkm07r97L0RsZ.jpg")!,
              popularity: 1890.803,
              vote_average: 7.8,
              vote_count: 157705),

    ]


    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
