//
//  HomeViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 06/02/25.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var favouriteLocationsCollectionView: UICollectionView!
    
    @IBOutlet weak var upcomingRidesCollectionView: UICollectionView!
    
    @IBOutlet weak var favouritePeopleCollectionView: UICollectionView!
    
    @IBOutlet weak var carbonView: UIView!
    @IBOutlet weak var savingsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchBar.isUserInteractionEnabled = true
        searchBar.delegate = self
        
        favouriteLocationsCollectionView.delegate = self
        favouriteLocationsCollectionView.dataSource = self
        
        upcomingRidesCollectionView.delegate = self
        upcomingRidesCollectionView.dataSource = self
        
        favouritePeopleCollectionView.delegate = self
        favouritePeopleCollectionView.dataSource = self
        
        configureCollectionViewLayout(favouriteLocationsCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        configureCollectionViewLayout(upcomingRidesCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        configureCollectionViewLayout(favouritePeopleCollectionView, inset: UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16))
        
        registerCells()
        fetchData()
        
    }
    
    func fetchData() {
        let urlString = "http://127.0.0.1:5001/auth"
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            guard let data = data else { return }
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: data, options: [])
                print("Response: \(jsonResponse)")
            } catch {
                print("Parsing error: \(error)")
            }
        }
        
        task.resume()
    }
    
    private func setupViews(){
//        carbonView
//        savingsView
    }

    private func registerCells(){
        favouriteLocationsCollectionView.register(UINib(nibName: "FavouriteLocationsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FavouriteLocationsCollectionViewCell")
        upcomingRidesCollectionView.register(UINib(nibName: "UpcomingRidesImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UpcomingRidesImageCollectionViewCell")
        favouritePeopleCollectionView.register(UINib(nibName: "FavouritePeopleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FavouritePeopleCollectionViewCell")
    }
    
    private func configureCollectionViewLayout(_ collectionView: UICollectionView, inset: UIEdgeInsets) {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = inset
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 10
        }
    }

}

extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("User typed: \(searchText)")
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text, !searchText.isEmpty else {
            print("Search text is empty.")
            return
        }

        let storyboard = UIStoryboard(name: "Search", bundle: nil)

        if let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController {
            searchVC.searchQuery = searchText

            navigationController?.pushViewController(searchVC, animated: true)
        }

        searchBar.resignFirstResponder()
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView{
            case favouriteLocationsCollectionView:
            return favouriteLocationsTest.count
            case upcomingRidesCollectionView:
            return satvikUpcomingRides.count
            case favouritePeopleCollectionView:
            return favouritePeople.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
            
        case favouriteLocationsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouriteLocationsCollectionViewCell", for: indexPath) as! FavouriteLocationsCollectionViewCell
            cell.setup(location: favouriteLocationsTest[indexPath.row])
            return cell
            
        case upcomingRidesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UpcomingRidesImageCollectionViewCell", for: indexPath) as! UpcomingRidesImageCollectionViewCell
            
            cell.layer.cornerRadius = 14
            cell.layer.shadowColor = UIColor.black.cgColor
            cell.layer.shadowOpacity = 0.1
            cell.layer.shadowOffset = .zero
            cell.backgroundConfiguration?.cornerRadius = 14
            
            cell.setup(ride: satvikUpcomingRides[indexPath.row])
            return cell
            
        case favouritePeopleCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouritePeopleCollectionViewCell", for: indexPath) as! FavouritePeopleCollectionViewCell
            cell.setup(people: favouritePeople[indexPath.row])
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouriteLocationsCollectionViewCell", for: indexPath) as! FavouriteLocationsCollectionViewCell
            cell.setup(location: favouriteLocationsTest[indexPath.row])
            return cell
        }
    
    }
    
    
    
    
}

extension HomeViewController{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == upcomingRidesCollectionView {
            performSegue(withIdentifier: "RideInformationSegue", sender: indexPath)
        }
        if collectionView == favouritePeopleCollectionView {
            performSegue(withIdentifier: "RiderProfileSegue", sender: indexPath)
        }
    }
}
