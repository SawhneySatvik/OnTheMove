//
//  UpcomingRidesCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit

class UpcomingRidesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var sourceLocationLabel: UILabel!
    
    @IBOutlet weak var destinationLocationLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var passengerCountLabel: UILabel!
    
    @IBOutlet weak var dateImage: UIImageView!
    
    @IBOutlet weak var sourceImage: UIImageView!
    
    @IBOutlet weak var destinationImage: UIImageView!
    
    @IBOutlet weak var passengerCountImage: UIImageView!
    
    func setup(ride: RideTest){
        dateLabel.text = ride.date
        sourceLocationLabel.text = ride.source.name
        destinationLocationLabel.text = ride.destination.name
        costLabel.text = "300"
        passengerCountLabel.text = "4"
    }

}
