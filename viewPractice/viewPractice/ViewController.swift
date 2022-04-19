//
//  ViewController.swift
//  viewPractice
//
//  Created by Jatin Kindra on 17/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        myView.frame.origin.x = 0
//        myView.frame.origin.y = 0
//
//        myView.frame.size.width = 50
//        myView.frame.size.height = 50
        
//        myView.tag = 10
//        myView.isUserInteractionEnabled = true
      
        view.backgroundColor = UIColor.gray
        
        myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        let myView2 = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        
        myView.backgroundColor = UIColor.orange
        myView.clipsToBounds = true // Now the myview2 will not go outside the myView
        
        myView2.backgroundColor = UIColor.blue
        
        view.addSubview(myView)
        myView.addSubview(myView2)
        
        //In IOS app, the coordinate system starts from top left corner.
        //x increases as you go right.
        //y increases as you go down.
    
        myView.alpha = 0.5 // making transparency to 50%
        // if we change the transparency of a view, it will also reflect to the all of its subviews.
        
//        myView2.isHidden = true
        //Making our view invisible.
        
        print(myView.frame)
        //This will return the current position of the view.
        
        print(myView.bounds)
        //This will return the position of view relative to itself only.(or we can say that in its own coordinate system)
        
        print(myView.center)
        //This will return the center position of the view relative to its superView.
        
//        myView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
        
        let myLabel = UILabel(frame: CGRect(x:50,y:300,width:300,height: 100))
        myLabel.text = "Hey Maf Family"
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
        let myImage = UIImageView(frame: CGRect(x: 50, y: 400, width: 300, height: 200))
        myImage.image = UIImage(named: "CarrefourLogo")
        myImage.backgroundColor = .black
        myImage.contentMode = .center
        view.addSubview(myImage)
    }


}

