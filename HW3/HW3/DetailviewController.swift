//
//  DetailViewController.swift
//  HW3
//
//  Created by bianca nicholson on 9/11/23.
//


import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    @IBOutlet weak var descriptionContentLabel: UILabel!
    
    
    @IBOutlet weak var popularityContentLabel: UILabel!
    
    
    @IBOutlet weak var averageContentLabel: UILabel!
    
    
    @IBOutlet weak var votesContentLabel: UILabel!
    

        
        

    
    // TODO: Pt 1 - Add a track property


    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/" +
                           track.poster_path.absoluteString)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: movieImageView)

        // Set labels with the associated track values.
        movieNameLabel.text = track.original_title
        descriptionContentLabel.text = track.overview
        popularityContentLabel.text = String(track.popularity)
        averageContentLabel.text = String(track.vote_average)

        // Use helper method to convert milliseconds into `mm:ss` string format
        votesContentLabel.text = String(track.vote_count)

    }



}
