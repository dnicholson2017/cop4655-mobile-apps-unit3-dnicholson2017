//
//  TrackCell.swift
//  HW2
//
//  Created by bianca nicholson on 9/7/23.
//

import UIKit
import Nuke


class TrackCell: UITableViewCell {
    
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        movieNameLabel.text = track.original_title
        movieDescriptionLabel.text = track.overview
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w440_and_h660_face/" +
                           track.poster_path.absoluteString)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: movieImageView)
    }


}
