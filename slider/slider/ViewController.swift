//
//  ViewController.swift
//  slider
//
//  Created by Jatin Kindra on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mySlider.isUserInteractionEnabled = true
        
        mySlider.value = 0.45
        mySlider.minimumValue = 10.00
        mySlider.maximumValue = 100.00
        
        mySlider.value = 40.0
        //If we give value less than the minimum value, then it will automatically take the minimum value.
        //Same 👆 for the maximum value.
        
        
        //Why this is not working.
        mySlider.minimumValueImage = UIImage(named: "max_volume")
        mySlider.maximumValueImage = UIImage(named: "min_volume")
        
        
        mySlider.isContinuous = false
        //A Boolean value indicating whether changes in the slider’s value generate continuous update events.
        
        //If true, the slider triggers the associated target’s action method repeatedly, as the user moves the thumb. If false, the slider triggers the associated action method just once, when the user releases the slider’s thumb control to set the final value.
//        The default value of this property is true.
        
        
        //keep the lft part of thumb with this 👇 colour.
//        mySlider.minimumTrackTintColor = .orange
        
//        mySlider.maximumTrackTintColor = .green
        
//        mySlider.thumbTintColor = .blue
        
        
        mySlider.setValue(60.1, animated: true)
        
        
//        mySlider.setThumbImage(UIImage(named: "max_volume"), for: .normal)
////
//        mySlider.layoutSubviews()
        
        
    }
    
    
    @IBAction func valueChangesSlider(_ sender: UISlider) {
        
        print(sender.value)
    }
    

}

class Slider: UISlider {

    @IBInspectable var thumbImage: UIImage?

    // MARK: Lifecycleoverride
    override func awakeFromNib() {
        super.awakeFromNib()

        if let thumbImage = thumbImage {
            self.setThumbImage(thumbImage, for: .normal)
        }
    }
}

