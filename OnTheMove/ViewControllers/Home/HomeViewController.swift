//
//  HomeViewController.swift
//  OnTheMove
//
//  Created by user@53 on 29/10/24.
//

import UIKit

class HomeViewController: UIViewController{

    
//    @IBOutlet weak var frequentLocationsCollectionView: UICollectionView!
    
    @IBOutlet weak var upcomingRidesCollectionView: UICollectionView!
    
    @IBOutlet weak var peopleYouMayKnowCollectionView: UICollectionView!
    
    @IBOutlet weak var perksCollectionViewCell: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//        frequentLocationsCollectionView.delegate = self
//        frequentLocationsCollectionView.dataSource = self
        upcomingRidesCollectionView.delegate = self
        upcomingRidesCollectionView.dataSource = self
        peopleYouMayKnowCollectionView.delegate = self
        peopleYouMayKnowCollectionView.dataSource = self
        perksCollectionViewCell.delegate = self
        perksCollectionViewCell.dataSource = self
        
        registerCells()
        
    }
    
    private func registerCells(){
//        frequentLocationsCollectionView.register(UINib(nibName: "FrequentLocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FrequentLocationCollectionViewCell")
        upcomingRidesCollectionView.register(UINib(nibName: "GeneralUpcomingRidesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GeneralUpcomingRidesCollectionViewCell")
        peopleYouMayKnowCollectionView.register(UINib(nibName: "PeopleYouMayKnowCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PeopleYouMayKnowCell")
        perksCollectionViewCell.register(UINib(nibName: "GeneralUpcomingRidesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GeneralUpcomingRidesCollectionViewCell")
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView{
            
//        case frequentLocationsCollectionView:
//            return frequentLocations.count
        case upcomingRidesCollectionView:
            return generalUpcomingRides.count
        case peopleYouMayKnowCollectionView:
            return favouritePeople.count
            
        case perksCollectionViewCell:
            return generalUpcomingRides.count
            
        default:
            return generalUpcomingRides.count
            
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
            
//            case frequentLocationsCollectionView:
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrequentLocationCollectionViewCell", for: indexPath) as! FrequentLocationCollectionViewCell
//            cell.setup(frequentLocation: frequentLocations[indexPath.row])
//            
//            return cell
            
            case upcomingRidesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GeneralUpcomingRidesCollectionViewCell", for: indexPath) as! GeneralUpcomingRidesCollectionViewCell
            cell.setup(ride: generalUpcomingRides[indexPath.row])
            
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
            
            case perksCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GeneralUpcomingRidesCollectionViewCell", for: indexPath) as! GeneralUpcomingRidesCollectionViewCell
            cell.setup(ride: generalUpcomingRides[indexPath.row])
            
            cell.layer.cornerRadius = 14
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.1
            cell.layer.shadowOffset = .zero
            cell.backgroundConfiguration?.cornerRadius = 14
            
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GeneralUpcomingRidesCollectionViewCell", for: indexPath) as! GeneralUpcomingRidesCollectionViewCell
            
            return cell
        }
    }
    
    
}
