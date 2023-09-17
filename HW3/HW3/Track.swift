//
//  Track.swift
//  HW2
//
//  Created by bianca nicholson on 9/11/23.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    // Detail properties
    let movieName: String
    let description: String
    let artworkUrl100: URL
    let popularity: String
    let averageVote: String
    let votes: String
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(movieName: "Meg 2",
              description: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w440_and_h660_face/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
              popularity : "5133.953",
              averageVote: "7",
              votes: "157705"),

        Track(movieName: "Barbie",
              description: "Barbie and Ken are havingg the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
              artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
              popularity: "3712.487",
              averageVote: "7.3",
              votes: "157705"),

        Track(movieName: "Strays",
              description: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
              artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
              popularity: "1873.846",
              averageVote: "7.4",
              votes: "157705"),
        Track(movieName: "The Nun II",
              description: "1956 – France. A priest is murdered. An evil is spreading. The sequel to the worldwide smash hit follows Sister Irene as she once again comes face-to-face with Valak, the demon nun.",
              artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
              popularity: "2536.981",
              averageVote: "6.9",
              votes: "157705"),

        Track(movieName: "Elemental",
              description: "In a city where fire, water, land and air residents live together, a fiery young woman and a go-with-the-flow guy will discover something elemental: how much they have in common.",
              artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/6oH378KUfCEitzJkm07r97L0RsZ.jpg")!,
              popularity: "1890.803",
              averageVote: "7.8",
              votes: "157705"),

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
