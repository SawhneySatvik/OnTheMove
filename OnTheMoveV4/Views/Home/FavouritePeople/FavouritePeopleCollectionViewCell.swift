//
//  FavouritePeopleCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 07/02/25.
//

import UIKit

class FavouritePeopleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    func setup(people: FavouritePeople){
        if let image = UIImage(named: people.image_id){
            imageView.image = image
        }
        else{
            imageView.image = UIImage(named: "AddPeople")
        }
        
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
    }

}
