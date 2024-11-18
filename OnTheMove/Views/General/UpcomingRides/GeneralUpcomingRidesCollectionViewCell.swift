//
//  GeneralUpcomingRidesCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 18/11/24.
//

import UIKit

class GeneralUpcomingRidesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var destinationImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var fromImageSymbol: UIImageView!
    
    @IBOutlet weak var fromLocation: UILabel!
    
    @IBOutlet weak var toImageSymbol: UIImageView!
    
    @IBOutlet weak var toLocation: UILabel!
    
    func setup(ride: GeneralUpcomingRides){
        dateLabel.text = ride.date
        fromLocation.text = ride.source.address
        toLocation.text = ride.destination.address
        
        toImageSymbol.image = UIImage(systemName: "location.fill")
        toImageSymbol.tintColor = UIColor.green

        fromImageSymbol.image = UIImage(systemName: "circle")
        fromImageSymbol.tintColor = UIColor.lightGray
        
        if let image = UIImage(named: ride.destinationImage){
            destinationImageView.image = image
        } else {
            destinationImageView.image = UIImage(named: "destinationImage")
        }
        
        
        
    }
    
    
}
