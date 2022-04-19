//
//  ViewController.swift
//  buttonPractice2
//
//  Created by Jatin Kindra on 18/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myButton.setAttributedTitle(NSAttributedString(string: "MAF, GURGAON"), for: .normal)
        
        
    
        
    }


}

