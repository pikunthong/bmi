//
//  ViewController.swift
//  ios 13610330 week10 poject2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiValueCal = "0"
    var calculatorBrain = CalculateBrain()
    
    
    @IBOutlet weak var lableHeight: UILabel!
    
    @IBOutlet weak var lableWeight: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func heightSlideChanged(_ sender: UISlider) {
        print(sender.value)
        print(String(format: "%.2f",sender.value))
        
        let height = String(format: "%.2f",sender.value)
        lableHeight.text="\(height) M."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
        print(String(format: "%.2f",sender.value))
        
        let weight = String(format: "%.0f",sender.value)
        lableWeight.text="\(weight) Kg."
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let weight = sliderWeight.value
        let height = sliderHeight.value
        //Local variable
        //let bmi = weight / (height * height)
        //print(bmi)
        
//        bmiValueCal = String(format: "%.1f", weight / (height * height))
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
        //มันจะช่วยลก layer ถ้าไม่มี self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            //destinationVC.bmiValue = bmiValueCal
            //ชื่อ object.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
        
            //เรียกใช้   เรียกใช้ function
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }//end if
        
        if segue.identifier == "goToCredit" {
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Pikunthong"
            //ชื่อ object.ชื่อตัวแปร = ค่าที่ต้องการ set ให้
        }//end if
        
        
    }//end func prepare
    
    
    
    
    
}//end class

