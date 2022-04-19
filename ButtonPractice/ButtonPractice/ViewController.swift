//
//  ViewController.swift
//  ButtonPractice
//
//  Created by Jatin Kindra on 14/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myButton.configuration = .tinted()
        
        myButton.setNeedsUpdateConfiguration()
        //Call this method to make the system call updateConfiguration(). The system calls this method automatically when the button’s state changes
        
        myButton.automaticallyUpdatesConfiguration = true
        // When YES, the button will automatically call -updatedConfigurationForButton: on its `configuration ` when the button's state changes, and apply the updated configuration to the button. The default value is YES.
        
        
        myButton.tintColor = UIColor.brown
        //changes the colour of the button's text.
        
        print(myButton.buttonType)
        
        print(myButton.isHovered)
        //A Boolean value that indicates whether a pointer effect is active.
        //If you enable pointer interaction by setting "isPointerInteractionEnabled", this property indicates the button has an active pointer effect.
        
        
//        myButton.role = UIButton.Role.cancel
        
        myButton.isPointerInteractionEnabled = true
        // Enables this button's built-in pointer interaction.
        
//        now if do
        //Why this is showing false?
        print(myButton.isHovered)
        
        
//        myButton.menu
        
        //Why Not Working ??
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.normal)
        
        myButton.setTitle("MAF, Carrefour", for: UIControl.State.normal)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.disabled)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.focused)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.reserved)
        
        
        myButton.setTitleColor(UIColor.orange, for: UIControl.State.normal)
        
        
        myButton.setTitleShadowColor(UIColor.blue , for: UIControl.State.normal)
        
       
        
//        myButton.setImage(myImage, for: .normal)
        
        if let myImage = UIImage(named: ""){
            
            myButton.setBackgroundImage(myImage, for: .normal)
            
            
        }
        
        
        //It will return us the title of our button.
        print(myButton.title(for: .normal) ?? "KUCH NAHI MILA")
        
        //It will return us the current colour of our title
        print(myButton.titleColor(for: .normal) ?? "KUCH NAHI MILA")
        
        //It will return us the current SHADOW  colour of our title
        print(myButton.titleShadowColor(for: .normal) ?? "KUCH NAHI MILA")
        
        //Not worked
        print(myButton.backgroundImage(for: .normal) ?? "Nothing Returned")
        
        
        print(myButton.preferredSymbolConfigurationForImage(in: .normal))
        
        //The value for this property is set automatically whenever the button state changes.
        // It will return the current title of the button that is displayed.
        print(myButton.currentTitle)
        
        print(myButton.currentTitleColor)
        
        print(myButton.currentTitleShadowColor)
        
        
        //Why these both properties are  returning nil ?
        print(myButton.currentImage)
        
        print(myButton.currentBackgroundImage)
        
        
        print(myButton.currentPreferredSymbolConfiguration)
        
        print(myButton.currentAttributedTitle)
        
        
        print(myButton.titleLabel?.text)
        
        print(myButton.imageView)
        
        
        // The label used to display the subtitle, when present.
        
        print(myButton.subtitleLabel)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

