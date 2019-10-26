//
//  CreditViewController.swift
//  ios 13610330 week10 poject2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullname = "Fullname"
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = fullname
        
    }
    

    @IBAction func bacPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
