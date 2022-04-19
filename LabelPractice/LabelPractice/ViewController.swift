//
//  ViewController.swift
//  LabelPractice
//
//  Created by Jatin Kindra on 13/04/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "Maf, Dubai and India,Maf, Dubai and India,Maf, Dubai and India,Maf, Dubai and India"
        
//        myLabel.font = UIFont.systemFont(ofSize: 20)
        
        myLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
//        myLabel.font = UIFont.italicSystemFont(ofSize: 50)
        
        
        
        myLabel.textColor = UIColor.blue
        
        myLabel.shadowColor = UIColor.orange
        
        myLabel.shadowOffset = CGSize.init(width: 2, height:2)
        
        

//        myLabel.textAlignment = NSTextAlignment.justified
        
//        myLabel.lineBreakMode = NSLineBreakMode.byClipping
        //... will not come
        //whatever the text is possible, that will come.
        
//        myLabel.lineBreakMode = NSLineBreakMode.byTruncatingHead
        //Truncate from starting
        
        myLabel.lineBreakMode = NSLineBreakMode.byTruncatingTail
        //truncate from left
        
//        myLabel.lineBreakMode = NSLineBreakMode.byTruncatingMiddle
        //will truncate from middle
        
        
        
//        myLabel.lineBreakMode = NSLineBreakMode.byCharWrapping
        
        //clipping -> last line only.
        //charWrapping - every line.
        
        //Char Wrapping - wrapping occurs before the first character that doesn’t fit
        
        
        
//        myLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        //Word Wrapping - wrapping occurs at word boundaries, unless the word itself doesn’t fit on a single line
        
        
     
        //What is the use of this ?
//        myLabel.attributedText = NSAttributedString.init(string: "maf-Family")
        
    
        myLabel.highlightedTextColor = UIColor.orange
        
        //If the below property is true, then 73 line will run
//        myLabel.isHighlighted = true
        
        
        
        myLabel.isUserInteractionEnabled = true
        //When set to false, touch, press, keyboard, and focus events intended for the view are ignored and removed from the event queue. When set to true, events are delivered to the view normally. The default value of this property is true.
        
        
//        myLabel.isEnabled = true
        //Set the value of this property to true to enable the control or false to disable it. An enabled control is capable of responding to user interactions, whereas a disabled control ignores touch events and may draw itself differently.
    
        
        myLabel.numberOfLines = 5
        //This property controls the maximum number of lines to use in order to fit the label’s text into its bounding rectangle. The default value for this property is 1. To remove any maximum limit, and use as many lines as needed, set the value of this property to 0.
        
//        myLabel.textAlignment = NSTextAlignment.justified
        //Except list line, all the above lines will take full container space.
        
        
//        myLabel.adjustsFontSizeToFitWidth = true
        //Automatically adjusts the font size according to the width.
        //minimumFontSize
        
        
        //*** How this is working
//        myLabel.baselineAdjustment = UIBaselineAdjustment.alignBaselines
        
//        myLabel.minimumScaleFactor = 0
        
        
//        ******** Not Working
//        myLabel.allowsDefaultTighteningForTruncation = true
        //When the value of this property is true, the label tightens intercharacter spacing of its text before allowing any truncation to occur
        
        //******** Not working.
//        myLabel.lineBreakStrategy = NSParagraphStyle.LineBreakStrategy.pushOut
        
        //
//        myLabel.textRect(forBounds: .infinite, limitedToNumberOfLines:.bitWidth)
        
//        myLabel.showsExpansionTextWhenTruncated = true
        
        
        myLabel.showsExpansionTextWhenTruncated = true
        
        
        
    }


}

