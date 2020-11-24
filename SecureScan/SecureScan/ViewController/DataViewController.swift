//
//  DataViewController.swift
//  SecureScan
//
//  Created by Jonas Schlauch on 24.11.20.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var vorname: UITextField!
    
    @IBOutlet weak var plz: UITextField!
    
    @IBOutlet weak var ort: UITextField!
    
    @IBOutlet weak var straße: UITextField!
    
    @IBOutlet weak var telefon: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.initStyle1(placeholder: "name")
        vorname.initStyle1(placeholder: "vorname")
        plz.initStyle1(placeholder: "plz")
        ort.initStyle1(placeholder: "ort")
        straße.initStyle1(placeholder: "straße")
        telefon.initStyle1(placeholder: "telefon")
        email.initStyle1(placeholder: "e-mail")
        
        addSwipeLeft(onSwipe: #selector(onSwipeLeft))
        addSwipeRight(onSwipe: #selector(onSwipeRight))
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

extension DataViewController {
    
    @objc func onSwipeLeft() {
        performSegue(withIdentifier: Segues.Data_Home.rawValue, sender: self)
    }
    
    @objc func onSwipeRight() {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
