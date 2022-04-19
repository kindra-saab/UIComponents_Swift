//
//  ViewController.swift
//  Label
//
//  Created by Jatin Kindra on 13/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myLabel.text = "MAF, Dubai"
        myLabel.font = UIFont.systemFont(ofSize: <#T##CGFloat#>)
        
        myLabel.textColor = UIColor.white
        
        myLabel.font = UIFont.systemFont(ofSize: 15)
        
        //Doubts.
        myLabel.font = .systemFont(ofSize:23, weight: .bold)
        
        myLabel.textAlignment = .center
        myLabel.backgroundColor = .orange
        
        
        //D
        myLabel.isHighlighted = false
        
        myLabel.shadowColor = UIColor.black
        
            
        
        
        
        
    }


}

