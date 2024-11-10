//
//  UpcomingRidesCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 10/11/24.
//

import UIKit

class UpcomingRidesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var sourceLocationLabel: UILabel!
    
    @IBOutlet weak var destinationLocationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
           
    func setup(ride: UpcomingRides){
        sourceLocationLabel.text = ride.source
        destinationLocationLabel.text = ride.destination
        
        let date = ride.date;
        let dateComponents = date.components(separatedBy:", ")
        
        
        dateLabel.text = dateComponents[0]
        timeLabel.text = dateComponents[1]
    }

}
