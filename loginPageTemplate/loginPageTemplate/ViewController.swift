//
//  ViewController.swift
//  loginPageTemplate
//
//  Created by Jatin Kindra on 26/04/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passWordField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var faceBookButton: UIButton!
    @IBOutlet weak var backIcon: UIImageView!
    @IBOutlet weak var emailValidate: UILabel!
    @IBOutlet weak var passwordValidate: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        heading.font = UIFont.boldSystemFont(ofSize: 30)
        
        
        emailField.borderStyle = .roundedRect
        passWordField.borderStyle = .roundedRect
        
        emailField.layer.cornerRadius    = 30.0
        passWordField.layer.cornerRadius = 30.0
        passWordField.layer.borderWidth  = 2.0
        emailField.layer.borderWidth     = 2.0
        
        emailField.font = UIFont.systemFont(ofSize: 15.0)
        passWordField.font = UIFont.systemFont(ofSize: 15.0)
        
        
        emailField.layer.masksToBounds = true
        
        emailField.layer.borderColor = UIColor.lightGray.cgColor
        passWordField.layer.borderColor =
        UIColor.lightGray.cgColor
        
        
        passWordField.layer.masksToBounds = true
        
        emailField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        
        emailField.leftViewMode = .always
        
        
        passWordField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 0))
        
        passWordField.leftViewMode = .always
        
        
//
        
        //****Not working custom color***
//        logInButton.backgroundColor = UIColor(red: 255.0/255.0, green: 71.0/255.0, blue: 63.0/255.0, alpha: 200.0/255.0)
        
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.tintColor = UIColor.white
        logInButton.layer.cornerRadius = 30.0
        
        
        myLabel.text = "OR"
        myLabel.textAlignment = .center
        myLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        
        faceBookButton.setTitle("Facebook Login", for: .normal)
        faceBookButton.setTitleColor(.white, for: .normal)
        faceBookButton.layer.cornerRadius = 30.0
        
    
        
        
        let backImage = UIImage(named: "backIcon")
        
        if let icon = backImage {
            
            backIcon.image = icon
            
        }
        
        passwordValidate.numberOfLines = 3
        
        byDefaultForm()

    }
    
    
    func byDefaultForm() {
        
        logInButton.isEnabled = false
        logInButton.alpha = 0.6
        
//                faceBookButton.isEnabled = false
        faceBookButton.alpha = 0.6
        
        emailValidate.isHidden = false
        passwordValidate.isHidden = false
        
        emailValidate.text    = "Required"
        passwordValidate.text = "Required"
        
        
        emailValidate.textColor = UIColor.red
        passwordValidate.textColor = UIColor.red
        
        emailField.text = ""
        passWordField.text = ""
        
        
        emailField.layer.borderColor = UIColor.lightGray.cgColor
        passWordField.layer.borderColor =
        UIColor.lightGray.cgColor
        
        
    }
    

    
    
    @IBAction func loginClick(_ sender: Any) {
        
        
        byDefaultForm()
        
        
//        if let email = emailField.text {
//
//            if email != ""{
//            print("Email Given is : \(email)")
//            }
//            else
//            {
//                print("Please Enter email")
//
//            }
//        }
    }
    
    
    @IBAction func emailChanged(_ sender: Any) {
        
        
        
        if let email = emailField.text
        {
            
            if let errorMessage  =  invalidEmail(email)
            {
                
                emailField.layer.borderColor = UIColor.red.cgColor
                
                emailValidate.text = errorMessage
                emailValidate.isHidden = false
                
            }
            else {
                
                emailField.layer.borderColor = UIColor.green.cgColor
                emailValidate.isHidden = true
                
            }
            
        }
        
        validForm()
        
    }
    
    
    func invalidEmail(_ email : String ) -> String? {
        
        
        let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
        
        if !predicate.evaluate(with: email)
        {
            return "Please enter a valid Email."
        }
        
        
        //If Nothing returned above.
        return nil
        
    }

    

    @IBAction func passwordChanged(_ sender: Any) {
        
        
                if let password = passWordField.text
                {
        
                    if let errorMessage  =  invalidPassword(password)
                    {
        
                        passWordField.layer.borderColor = UIColor.red.cgColor
        
                        passwordValidate.text = errorMessage
                        passwordValidate.isHidden = false
        
                    }
                    else {
        
                        passWordField.layer.borderColor = UIColor.green.cgColor
                        passwordValidate.isHidden = true
        
                    }
        
                }
        
        validForm()
        
        
        
        
    }
    
    func invalidPassword(_ password:String) -> String? {
        
        let regularExpression = ".*[0-9]+.*"

        let predicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)

        if !predicate.evaluate(with: password)
        {
            return "Password must contain atleast 1 digit."
        }
        
        if password.count < 8
        {
            return "Password must contain atleast 8 Characters"
        }

        //If Nothing returned above.
        return nil

    }
    
    
    func validForm() {
        
        if emailValidate.isHidden && passwordValidate.isHidden {
            
            logInButton.isEnabled = true
            logInButton.alpha = 1
            
            faceBookButton.alpha = 1
            
        }
        
    }
    

}

