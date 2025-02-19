//
//  SearchRidersViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 07/02/25.
//

import UIKit

class SearchRidersViewController: UIViewController {

    
    @IBOutlet weak var searchRidersCollectionView: UICollectionView!
    
    @IBOutlet weak var sourceTextField: UITextField!
    
    @IBOutlet weak var destinationTextField: UITextField!
    
    @IBOutlet weak var dateTimePicker: UIDatePicker!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var searchButton: UIButton!
    
    var sourceAddress: String?
    var destinationAddress: String?
    var dateTime: Date?
    
    // Optionally, if you want to work with geocoded locations:
    var sourceLocation: Location?
    var destinationLocation: Location?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sourceTextField.text = sourceAddress
        destinationTextField.text = destinationAddress
        if let dateTime = dateTime {
            dateTimePicker.date = dateTime
        }
        
        
        searchRidersCollectionView.delegate = self
        searchRidersCollectionView.dataSource = self
        
        registerCell()
        
    }
    
    private func registerCell(){
        searchRidersCollectionView.register(UINib(nibName: "SearcRidersCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SearcRidersCollectionViewCell")
    }
    

}

extension SearchRidersViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearcRidersCollectionViewCell", for: indexPath) as! SearcRidersCollectionViewCell
        cell.setup(rider: riders[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return riders.count
    }
    
    //Segue
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == searchRidersCollectionView {
            performSegue(withIdentifier: "SearchedRiderSegue", sender: indexPath)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SearchedRiderSegue",
           let destinationVC = segue.destination as? SearchedRiderViewController,
           let indexPath = sender as? IndexPath {
            let selectedRider = riders[indexPath.row]
            destinationVC.rider = selectedRider
        }
    }
    
}

extension SearchRidersViewController: UITextFieldDelegate {
    
}
