//
//  RidersCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 18/11/24.
//

import UIKit

class RidersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var riderProfileImage: UIImageView!
    
    @IBOutlet weak var riderNameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var riderPassengerCount: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    func setup(rider: Rider){
        riderNameLabel.text = rider.name
        timeLabel.text = rider.time
        riderPassengerCount.text = "\(rider.passengers)"
        costLabel.text = "\(rider.cost)"
        
        if let image = UIImage(named: rider.name){
            riderProfileImage.image = image
        } else {
            riderProfileImage.image = UIImage(named: "Satvik")
        }
    }
    
    
    
    
}
