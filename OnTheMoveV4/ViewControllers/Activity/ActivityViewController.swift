//
//  ActivityViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var upcomingRidesCollectionView: UICollectionView!
    
    @IBOutlet weak var ridesCreatedByYouCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        upcomingRidesCollectionView.delegate = self
        upcomingRidesCollectionView.dataSource = self
        
        ridesCreatedByYouCollectionView.delegate = self
        ridesCreatedByYouCollectionView.dataSource = self
        
        configureCollectionViewLayout(upcomingRidesCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        configureCollectionViewLayout(ridesCreatedByYouCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        
        
        
        registerCell()
        
//        pastRidesTableView.reloadData()
    }

    private func registerCell(){
        upcomingRidesCollectionView.register(UINib(nibName: "UpcomingRidesImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UpcomingRidesImageCollectionViewCell")
        ridesCreatedByYouCollectionView.register(UINib(nibName: "RidesCreatedByYouCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RidesCreatedByYouCollectionViewCell")

    }
    
    private func configureCollectionViewLayout(_ collectionView: UICollectionView, inset: UIEdgeInsets) {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = inset
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 10
        }
    }
    
    
}

extension ActivityViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView{
            case upcomingRidesCollectionView:
            return satvikUpcomingRides.count
        case ridesCreatedByYouCollectionView:
            return satvikPastRides.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
            
            
        case upcomingRidesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UpcomingRidesImageCollectionViewCell", for: indexPath) as! UpcomingRidesImageCollectionViewCell
            
            cell.layer.cornerRadius = 14
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.1
            cell.layer.shadowOffset = .zero
            cell.backgroundConfiguration?.cornerRadius = 14
            
            cell.setup(ride: satvikUpcomingRides[indexPath.row])
            return cell
            
        case ridesCreatedByYouCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RidesCreatedByYouCollectionViewCell", for: indexPath) as! RidesCreatedByYouCollectionViewCell
            
            cell.setup(ride: satvikPastRides[indexPath.row])
            return cell
            
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UpcomingRidesCollectionViewCell", for: indexPath) as! UpcomingRidesCollectionViewCell
            
            cell.layer.cornerRadius = 14
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.1
            cell.layer.shadowOffset = .zero
            cell.backgroundConfiguration?.cornerRadius = 14
            
            cell.setup(ride: testRides[indexPath.row])
            return cell
        }
        
    }
    
}

extension ActivityViewController{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == upcomingRidesCollectionView {
            performSegue(withIdentifier: "UpcomingRideInformationActivitySegue", sender: indexPath)
        }
    }
}
