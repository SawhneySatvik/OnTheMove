//
//  PeopleYouMayKnowCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 10/11/24.
//

import UIKit

class PeopleYouMayKnowCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var peopleImageView: UIImageView!
    
    func setup(people: FavouritePeople){
        if let image = UIImage(named: people.image_id){
            peopleImageView.image = image
        }
        else{
            print("Image not found")
        }
    }
    
}
