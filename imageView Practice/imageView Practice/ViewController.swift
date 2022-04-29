//
//  ViewController.swift
//  imageView Practice
//
//  Created by Jatin Kindra on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .cyan
        
        myImageView.image = UIImage(named: "CarrefourLogo")
        
//        myImageView.highlightedImage = UIImage(named: "logo")
        
        //highLighted image will only show when 👇 this property is true.
//        myImageView.isHighlighted = true
        
//        myImageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(textStyle: .largeTitle)
        
//        myImageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        
//        myImageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(textStyle: .subheadline)
        
        myImageView.isUserInteractionEnabled = true
        
        let imgArr = [
        UIImage(named: "CarrefourLogo")!,
        UIImage(named: "logo")!,
        UIImage(named: "diamond_app_icon")!]
        
        myImageView.animationImages = imgArr
        
        
        myImageView.animationDuration = 3.0
        
        myImageView.animationRepeatCount = 0
        //0 means infinite
        
        myImageView.startAnimating()
        
        
        
    }


}

