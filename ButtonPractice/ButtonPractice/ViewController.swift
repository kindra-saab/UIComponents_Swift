//
//  ViewController.swift
//  ButtonPractice
//
//  Created by Jatin Kindra on 14/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myButton2: UIButton!
    @IBOutlet weak var myButton3: UIButton!
    @IBOutlet weak var myButton4: UIButton!
    @IBOutlet weak var myButton5: UIButton!
    @IBOutlet weak var myButton6: UIButton!
    @IBOutlet weak var myButton7: UIButton!
    @IBOutlet weak var myButton8: UIButton!
    @IBOutlet weak var myButton9: UIButton!
    @IBOutlet weak var myButton10: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myButton.configuration = .tinted()
        myButton2.configuration = .tinted()
        myButton3.configuration = .tinted()
        myButton4.configuration = .tinted()
        myButton5.configuration = .tinted()
        myButton6.configuration = .tinted()
        myButton7.configuration = .tinted()
        myButton8.configuration = .tinted()
        myButton9.configuration = .tinted()
        myButton10.configuration = .tinted()

        

        
        myButton.setNeedsUpdateConfiguration()
        //Call this method to make the system call updateConfiguration(). The system calls this method automatically when the button’s state changes
        
        myButton.automaticallyUpdatesConfiguration = true
        // When YES, the button will automatically call -updatedConfigurationForButton: on its `configuration ` when the button's state changes, and apply the updated configuration to the button. The default value is YES.
        
        
        myButton.tintColor = UIColor.brown
        //changes the colour of the button's text.
        myButton2.tintColor = UIColor.brown
        myButton3.tintColor = UIColor.brown
        myButton4.tintColor = UIColor.brown
        myButton5.tintColor = UIColor.brown
        myButton6.tintColor = UIColor.brown
        myButton7.tintColor = UIColor.brown
        myButton8.tintColor = UIColor.brown
        myButton9.tintColor = UIColor.brown
        myButton10.tintColor = UIColor.brown

        
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
        
        myButton2.setTitle("didEndOnExit", for: UIControl.State.normal)
        
        myButton3.setTitle("Editing Changed", for: UIControl.State.normal)
        
        myButton4.setTitle("Touch Up Inside", for: UIControl.State.normal)
        
        myButton5.setTitle("Touch Down", for: UIControl.State.normal)
        
        myButton6.setTitle("Touch Down Repeat", for: UIControl.State.normal)
        
        myButton7.setTitle("Touch Drag Inside", for: UIControl.State.normal)
        
        myButton8.setTitle("Touch Drag Outside", for: UIControl.State.normal)
        
        myButton9.setTitle("Touch Drag Enter", for: UIControl.State.normal)
        
        myButton10.setTitle("Touch Cancel", for: .normal)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.disabled)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.focused)
        
//        myButton.setTitle("MAF, Carrefour", for: UIControl.State.reserved)
        
        
        myButton.setTitleColor(UIColor.orange, for: UIControl.State.normal)
        
        myButton2.setTitleColor(UIColor.brown, for: UIControl.State.normal)
        
        myButton3.setTitleColor(.orange, for: .normal)
        
        myButton4.setTitleColor(.brown, for: .normal)
        
        myButton5.setTitleColor(.orange, for: .normal)
        
        myButton6.setTitleColor(.brown, for: .normal)
        
        myButton7.setTitleColor(.orange, for: .normal)
        
        myButton8.setTitleColor(.brown, for: .normal)
        
        myButton9.setTitleColor(.orange, for: .normal)
        
        myButton10.setTitleColor(.brown, for: .normal)

        
        
        
        
        
//        myButton.setTitleShadowColor(UIColor.blue , for: UIControl.State.normal)
        
       
        
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
        
        
//        print(myButton.preferredSymbolConfigurationForImage(in: .normal))
        
        //The value for this property is set automatically whenever the button state changes.
        // It will return the current title of the button that is displayed.
//        print(myButton.currentTitle)
        
//        print(myButton.currentTitleColor)
        
//        print(myButton.currentTitleShadowColor)
        
        
        //Why these both properties are  returning nil ?
//        print(myButton.currentImage)
        
//        print(myButton.currentBackgroundImage)
        
        
//        print(myButton.currentPreferredSymbolConfiguration)
        
//        print(myButton.currentAttributedTitle)
        
        
//        print(myButton.titleLabel?.text)
        
//        print(myButton.imageView)
        
        
        // The label used to display the subtitle, when present.
        
//        print(myButton.subtitleLabel)
        
    }
    
    
//    @IBAction func didEndOnExit(_ sender: Any) {
//        print("Did End On Exit")
//    }
    
    
//    @IBAction func editingChanged(_ sender: Any) {
//
//    }
    
    
    // touch and then up your finger, then this will trigger then.
    @IBAction func touchUpInside(_ sender: Any) {
        
        print("Touched Inside the button")
        
    }
    
    //This event will only trigger as soon as we touch the button only.
    @IBAction func touchDown(_ sender: Any) {
        
        print("Touch Down")
        
    }
    
    //Everytime the value changes of the slider, this function will trigger.
    @IBAction func valueChangedSlider(_ sender: UISlider) {
        
        print("Value Changes \(sender.value)")
        
    }
    
    
    //This event will occur on double-click
    @IBAction func touchDownRepeat(_ sender: Any) {
        
        print("Touch down repeat")
    }
    
    //Not Working.
//    @IBAction func touchDragInside(_ sender: Any) {
//        print("Touch Drag Inside")
//    }
    
    //not working
    @IBAction func touchDragOutside(_ sender: Any) {
        print("Touch Drag Outside")
    }
    
    
    //Touch drag enter will only gets called, when u start the touch inside the control and drag it outside the bounds of the control and then drag it back inside the control, without leaving the touch
    @IBAction func touchDragEnter(_ sender: Any) {
        
        print("Touch Drag Enter")
        
    }
    
    
    @IBAction func touchCancel(_ sender: Any) {
    }
    
    
    
    
}

