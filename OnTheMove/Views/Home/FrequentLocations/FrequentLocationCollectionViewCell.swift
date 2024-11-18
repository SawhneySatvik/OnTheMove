//
//  FrequentLocationCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 18/11/24.
//

import UIKit

class FrequentLocationCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageSymbol: UIImageView!
    
    @IBOutlet weak var locationNameLabel: UILabel!
    
    func setup(frequentLocation: FrequentLocation){
        
        locationNameLabel.text = frequentLocation.name
        
        if let image = UIImage(systemName: frequentLocation.name){
            imageSymbol.image = image
        } else {
            imageSymbol.image = UIImage(systemName: "location.fill")
            imageSymbol.tintColor = UIColor.black
        }
    }

}
