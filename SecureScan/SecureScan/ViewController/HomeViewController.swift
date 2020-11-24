//
//  HomeViewController.swift
//  SecureScan
//
//  Created by Jonas Schlauch on 24.11.20.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scan: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSwipeLeft(onSwipe: #selector(onSwipeLeft))
        addSwipeRight(onSwipe: #selector(onSwipeRight))
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(onScanTapped))
        scan.addGestureRecognizer(tap)
        scan.isUserInteractionEnabled = true
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

extension HomeViewController {
    
    @objc func onSwipeLeft() {
        performSegue(withIdentifier: Segues.Home_Result.rawValue, sender: self)
    }
    
    @objc func onSwipeRight() {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @objc func onScanTapped() {
        performSegue(withIdentifier: Segues.Home_Scan.rawValue, sender: self)
    }
    
}
