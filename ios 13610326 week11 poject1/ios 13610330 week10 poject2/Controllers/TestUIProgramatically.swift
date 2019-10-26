//
//  TestUIProgramatically.swift
//  ios 13610330 week10 poject2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class TestUIProgramatically: UIViewController {
    
    var BMIvalue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = BMIvalue
        label.frame = CGRect(x: 200,y:200, width: 100, height: 50)
        view.addSubview(label)
    }
}
