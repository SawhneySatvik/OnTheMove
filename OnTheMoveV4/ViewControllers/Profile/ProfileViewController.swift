//
//  ProfileViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 08/02/25.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileTableView: UITableView!
    
    
    let options = ["Edit Favourite Places", "Add Vehicle", "Invite a Friend", "Get Verified","Need Help?","."]
    let optionsIcons = ["map", "car", "person.fill.badge.plus","checkmark.seal", "questionmark","."]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureTableView()
    }
    
    func configureTableView() {
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.register(UITableViewCell.self, forCellReuseIdentifier: "OptionCell")
        
    }

}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OptionCell", for: indexPath)
        cell.textLabel?.text = options[indexPath.row]
        let symbolImage = UIImage(systemName: optionsIcons[indexPath.row])?.withRenderingMode(.alwaysTemplate)
        cell.imageView?.image = symbolImage
        cell.imageView?.tintColor = .black
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Selected: \(options[indexPath.row])")
    }
}
