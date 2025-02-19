//
//  UpcomingRideSummaryViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 11/02/25.
//

import UIKit

class UpcomingRideSummaryViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var sourceLocationLabel: UILabel!
    
    @IBOutlet weak var destinationLocationLabel: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameDriverLabel: UILabel!
    
    @IBOutlet weak var numberOfAcceptedPassengersLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var numberOfPassengers: UILabel!
    
    @IBOutlet weak var passengersJoinedCollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passengersJoinedCollectionView.dataSource=self
        passengersJoinedCollectionView.delegate=self
        // Do any additional setup after loading the view.
        
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
        
        registerCells()
        setupSheetStyle()
    }
    
    private func setupSheetStyle() {
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .custom { context in
                    return context.maximumDetentValue * 0.8
                }
            ]
            presentationController.prefersGrabberVisible = true
        }
    }
    
    private func registerCells(){
        
        passengersJoinedCollectionView.register(UINib(nibName: "FavouritePeopleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FavouritePeopleCollectionViewCell")
    }
    
}

extension UpcomingRideSummaryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case passengersJoinedCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouritePeopleCollectionViewCell", for: indexPath) as! FavouritePeopleCollectionViewCell
            cell.setup(people: favouritePeople[indexPath.row])
            return cell
            
        default :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouritePeopleCollectionViewCell", for: indexPath) as! FavouritePeopleCollectionViewCell
            cell.setup(people: favouritePeople[indexPath.row])
            return cell
        }
    }
}
