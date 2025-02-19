//
//  LoginViewController.swift
//  OnTheMoveV4
//
//  Created by user@53 on 11/02/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    let authEmail = "satvik@gmail.com"
    let authPassword = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginView.layer.cornerRadius = 15
        loginView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        loginView.clipsToBounds = true
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        guard let enteredEmail = email.text,
                      let enteredPassword = password.text else {
                    return
                }
                
                // Simple check of hard-coded credentials
            if enteredEmail == authEmail && enteredPassword == authPassword {
                // Credentials match, so transition to Main storyboard
                showMainStoryboard()
            } else {
                // Credentials incorrect, show an alert or a print statement
                print("Invalid email or password")
                // Optionally, you could show an alert to the user:
                // showAlert(message: "Invalid email or password")
            }
    }
    
    private func showMainStoryboard() {
            // If using the SceneDelegate approach (iOS 13+):
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let sceneDelegate = windowScene.delegate as? SceneDelegate,
               let window = sceneDelegate.window {
                
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                guard let mainVC = mainStoryboard.instantiateInitialViewController() else { return }
                
                window.rootViewController = mainVC
                window.makeKeyAndVisible()
            }
        }
    
    

}
