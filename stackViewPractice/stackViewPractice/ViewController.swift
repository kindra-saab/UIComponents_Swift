//
//  ViewController.swift
//  stackViewPractice
//
//  Created by Jatin Kindra on 25/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var myStackView: UIStackView!
    //    @IBOutlet weak var myStackView: UIStackView
    
//    @IBOutlet weak var titleLabel: UILabel!
    var titleLabel = UILabel(frame: CGRect(x: 60, y: 60, width: 300, height: 50))
    var stackView  = UIStackView(frame: CGRect(x: 80, y: 120, width: 200, height: 700))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTitleLabel()
        configureStackView()
        // Do any additional setup after loading the view.
        
//        myStackView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//
//        myStackView.axis = .vertical
//        myStackView.distribution = .equalSpacing
//        myStackView.alignment = .trailing
//
//        myStackView.spacing = 60
//
//        myStackView.isBaselineRelativeArrangement = true
        
        
    }
    
    //MARK: It is method
    func configureStackView(){
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        addButtonsToStackView()
//        setStackViewConstraints()
    }
    
    func addButtonsToStackView () {
        
        let numberOfButtons = 10
        
        for i in 1...numberOfButtons {
            let button = UIButton()
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .red
            button.titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 28)
            button.layer.cornerRadius = 10
            button.setTitle("\(i)", for: .normal)
//            button.center = self.view.center
            stackView.addArrangedSubview(button)
        }
        
    }
 
 
    func configureTitleLabel() {
        
        
        view.addSubview(titleLabel)
        titleLabel.text = "Hey Mafers !!"
        titleLabel.font = .boldSystemFont(ofSize: 36)
        titleLabel.textColor = .orange
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
        
        
    }


}

