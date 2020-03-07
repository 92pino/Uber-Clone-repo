//
//  HomeController.swift
//  Uber
//
//  Created by JinBae Jeong on 2020/03/07.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class HomeController: UIViewController {

    // MARK: - Properties
    private let mapView = MKMapView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        checkIfUserIsLoggedIn()
//        signOut()
    }
    
    // MARK: - API
    func checkIfUserIsLoggedIn() {
        if Auth.auth().currentUser?.uid == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                self.present(nav, animated: true, completion: nil)
            }
        } else {
            configureUI()
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print("DEBUG: Error signing out")
        }
    }
    
    // MARK: - Helper Functions
    func configureUI() {
        view.addSubview(mapView)
        mapView.frame = view.frame
    }

}
