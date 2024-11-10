//
//  HomeViewController.swift
//  OnTheMove
//
//  Created by user@53 on 29/10/24.
//

import UIKit

class HomeViewController: UIViewController{

    @IBOutlet weak var upcomingRidesCollectionView: UICollectionView!
    
    @IBOutlet weak var peopleYouMayKnowCollectionView: UICollectionView!
    
    @IBOutlet weak var perksCollectionViewCell: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        upcomingRidesCollectionView.delegate = self
        upcomingRidesCollectionView.dataSource = self
        
        registerCells()
        
    }
    
    private func registerCells(){
        upcomingRidesCollectionView.register(UINib(nibName: "UpcomingRidesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UpcomingRidesCell")
        peopleYouMayKnowCollectionView.register(UINib(nibName: "PeopleYouMayKnowCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PeopleYouMayKnowCell")
        perksCollectionViewCell.register(UINib(nibName: "UpcomingRidesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UpcomingRidesCell")
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView{
            
        case upcomingRidesCollectionView:
            return upcomingRides.count
            
        case peopleYouMayKnowCollectionView:
            return favouritePeople.count
            
        default:
            return upcomingRides.count
            
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
            case upcomingRidesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UpcomingRidesCell", for: indexPath) as! UpcomingRidesCollectionViewCell
            cell.setup(ride: upcomingRides[indexPath.row])
            
            cell.layer.cornerRadius = 14
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.1
            cell.layer.shadowOffset = .zero
            cell.backgroundConfiguration?.cornerRadius = 14
            
            return cell
            
            case peopleYouMayKnowCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PeopleYouMayKnowCell", for: indexPath) as! PeopleYouMayKnowCollectionViewCell
            cell.setup(people: favouritePeople[indexPath.row])
            
            cell.layer.masksToBounds = true
            cell.layer.cornerRadius = cell.peopleImageView.frame.height / 2
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UpcomingRidesCell", for: indexPath) as! UpcomingRidesCollectionViewCell
            
            return cell
        }
    }
    
    
}
