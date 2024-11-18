//
//  ProfileViewController.swift
//  OnTheMove
//
//  Created by user@53 on 12/11/24.
//

import UIKit

class ProfileViewController: UIViewController {

    
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var fullNameLabel: UILabel!

    
    let profile = users[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        
        if let image = UIImage(named: profile.profile_picture) {
            profileImageView.image = image
        } else{
            print("Image not found")
        }
        
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        
        fullNameLabel.text = "\(profile.first_name) \(profile.last_name)"
        
    }
    
    

}
