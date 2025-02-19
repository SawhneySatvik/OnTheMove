//
//  SearchedRiderViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 11/02/25.
//

import UIKit

class SearchedRiderViewController: UIViewController {

    var rider: Rider?
    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupSheetStyle()
        
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
        
        print("rider: \(String(describing: rider))")
    }
    
    private func setupSheetStyle() {
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .custom { context in
                    return context.maximumDetentValue * 0.4
                }
            ]
            presentationController.prefersGrabberVisible = true
        }
    }

}
