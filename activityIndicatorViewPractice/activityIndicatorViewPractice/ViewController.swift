//
//  ViewController.swift
//  activityIndicatorViewPractice
//
//  Created by Jatin Kindra on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myAIView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myAIView.style = .large
        
        //A Boolean value that controls whether the receiver is hidden when the animation is stopped.
//        myAIView.hidesWhenStopped = true
        
        print(myAIView.isAnimating)
        
        myAIView.color = UIColor.orange
        
        myAIView.startAnimating()
        
        print(myAIView.isAnimating)
        
        myAIView.stopAnimating()
        
        print(myAIView.isAnimating)
        
        
        myAIView.alpha = 0.8
        
        
        
        
        
        
    }


}

