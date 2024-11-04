//
//  OnBoardingCollectionViewCell.swift
//  OnTheMove
//
//  Created by user@53 on 29/10/24.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var onBoardingTitle: UILabel!
    
    @IBOutlet weak var onBoardingImage: UIImageView!
    
    @IBOutlet weak var onBoardingDescription: UILabel!
    
    func setup(_ slide: OnBoardingModel){
        
        onBoardingTitle.text = slide.title
        onBoardingDescription.text = slide.description
        
        if let image = UIImage(named: slide.image) {
            onBoardingImage.image = image
        }
        else {
            print("Warning: Image named \(slide.image) not found in assets.")
        }
    }
}
