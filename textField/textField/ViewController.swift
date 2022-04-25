//
//  ViewController.swift
//  textField
//
//  Created by Jatin Kindra on 18/04/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTextField.text = "Welcome to Carrefour"
        myTextField.textColor = UIColor.orange
//        let myUIFont = UIFont()
        myTextField.font = UIFont.boldSystemFont(ofSize: 30)
        myTextField.textAlignment = .center
        
        myTextField.borderStyle = .roundedRect
        
        //doubt
        myTextField.defaultTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.brown]
        
        //Displays when there is no text in the textfield.
        myTextField.placeholder = "Hello Everyone"
        
        
        myTextField.clearsOnBeginEditing = true
        //A Boolean value that determines whether the text field removes old text when editing begins.
        
        myTextField.adjustsFontSizeToFitWidth = true
        //A Boolean value that indicates whether to reduce the font size to fit the text string into the text field’s bounding rectangle.
        
        myTextField.minimumFontSize = 2
        //he size of the smallest permissible font when drawing the text field’s text.
        //This property is useful for using the property just above this.
        
        //Not working.
        //It will not work, when borderStyle is .rectRounded.
        myTextField.background = UIImage(named: "CarrefourLogo")
        
//        myTextField.isUserInteractionEnabled = false
        
        //*****Not Working*****
//        myTextField.disabledBackground = UIImage(named: "diamond_app_icon")
        
        
        print(myTextField.isEditing)
       //A Boolean value that indicates whether the text field is currently in edit mode.
        
        //This property is set to true when the user begins editing text in this text field, and it is set to false again when editing ends. The text field notifies its delegate when editing begins and ends.
        
        //Noty working.
//        myTextField.typingAttributes = [NSAttributedString.Key.backgroundColor:UIColor.yellow]

        
        myTextField.clearButtonMode = UITextField.ViewMode.always
        //A mode that controls when the standard Clear button appears in the text field
        
        
        //******Not giving Expected Results.****
//        let imageView = UIImageView(frame: CGRect(x:0,y:0,width:20,height:20))
//        let image = UIImage(named: "CarrefourLogo")
//        imageView.image = image
//        imageView.contentMode = .left
//        myTextField.leftView = imageView
//
//        myTextField.leftViewMode =  UITextField.ViewMode.always
        
        
        //Not Working.
        myTextField.clearsOnInsertion = true
        
        myTextField.delegate = self
        
        myTextField.allowsEditingTextAttributes = true
        
        myTextField.becomeFirstResponder()
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        return true
        
    }
    
    //when user taps the return button
    //not working.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("Editing Stops")
    }
    
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        <#code#>
//    }
    
    


}

