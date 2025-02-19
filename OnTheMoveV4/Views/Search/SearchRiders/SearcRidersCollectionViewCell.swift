//
//  SearcRidersCollectionViewCell.swift
//  OnTheMoveV4
//
//  Created by user@53 on 11/02/25.
//

import UIKit

class SearcRidersCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!

    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCellAppearance()
        configureRiderProfileImage()
    }
    
    func setup(rider: Rider){
        nameLabel.text = rider.name
        costLabel.text = "\(rider.cost)"
        timeLabel.text = rider.time.description
        
        if let image = UIImage(named: rider.name) {
            profileImageView.image = image
        } else {
            profileImageView.image = UIImage(named: "person")
        }
    }
    
    private func configureCellAppearance() {
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.1
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 4
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.5).cgColor
    }
    
    private func configureRiderProfileImage() {
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        profileImageView.contentMode = .scaleAspectFill
    }

}
