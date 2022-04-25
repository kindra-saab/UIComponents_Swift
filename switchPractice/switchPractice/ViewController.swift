//
//  ViewController.swift
//  switchPractice
//
//  Created by Jatin Kindra on 21/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLabel.text = "Change Background Color"
        myLabel.numberOfLines = 4
        
        //When button is on,
        //Then this property changes its background colour
        mySwitch.onTintColor = .yellow
        
        //The colour of the button itself.
        mySwitch.thumbTintColor = .orange
        
        //No effect of this property after ios7.
        mySwitch.onImage = UIImage(named: "high_volume")
        
        //No effect of this property after ios7.
        mySwitch.offImage = UIImage(named: "low_volume")
        
        //*****Doubt catalyst mac idiom *****
//        mySwitch.title = "Colour Change"
        
        //***** Not Working ****
        //Default size is automatic.
        mySwitch.preferredStyle = .sliding
        
        print(mySwitch.style)
        
//        mySwitch.isOn = false
         
        
        
        
    }
    
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            view.backgroundColor = .orange
            print("Currently switch is \(mySwitch.isOn)")
            
//            mySwitch.setOn(false, animated: true)
        }
        else
        {
            view.backgroundColor = .cyan
            print("Currently switch is \(mySwitch.isOn)")
        }
        
    }
    
    


}

