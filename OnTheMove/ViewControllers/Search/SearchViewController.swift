//
//  SearchViewController.swift
//  OnTheMove
//
//  Created by user@53 on 18/11/24.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    @IBOutlet weak var ridersCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Options Nearby"
        
        ridersCollectionView.delegate = self
        ridersCollectionView.dataSource = self
        
        registerCells()
    }
    
    private func registerCells(){
        ridersCollectionView.register(UINib(nibName: "RidersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RidersCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return riders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RidersCollectionViewCell", for: indexPath) as! RidersCollectionViewCell
        
        cell.setup(rider: riders[indexPath.row])
        
        return cell
    }
    
    
    

}
