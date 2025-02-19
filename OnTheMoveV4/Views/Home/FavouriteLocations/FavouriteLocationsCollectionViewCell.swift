//
//  FavouriteLocationsCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit

class FavouriteLocationsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var button: UIButton!
    
    func setup(location: LocationTest){
        let title = location.name
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.tintColor = .black
    }

}
