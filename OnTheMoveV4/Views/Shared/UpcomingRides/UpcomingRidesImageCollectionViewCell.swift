//
//  UpcomingRidesImageCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 11/02/25.
//

import UIKit

class UpcomingRidesImageCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var upcomingRidsImageView: UIImageView!
    
    @IBOutlet weak var dateAndTimeImageLabel: UILabel!
    
    @IBOutlet weak var sourceLocationLabel: UILabel!
    
    @IBOutlet weak var destinationLocationLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(ride: Ride) {
        dateAndTimeImageLabel.text = ride.date.description
        sourceLocationLabel.text = ride.startLocation.address.name
        destinationLocationLabel.text = ride.endLocation.address.name
        
        if let image = UIImage(named: "HondaCity") {
            upcomingRidsImageView.image = image
        } else {
            upcomingRidsImageView.image = UIImage(named: "car")
        }
    }
    
    private func configureCellAppearance() {
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = false
    }

}
