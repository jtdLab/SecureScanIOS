//
//  DataSecurityViewController.swift
//  SecureScan
//
//  Created by Jonas Schlauch on 24.11.20.
//

import UIKit

class DataSecurityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addSwipeLeft(onSwipe: #selector(onSwipeLeft))
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension DataSecurityViewController {
    
    @objc func onSwipeLeft() {
        performSegue(withIdentifier: Segues.DataSecurity_Data.rawValue, sender: self)
    }
}
