//
//  ViewController.swift
//  HelloWorld2807
//
//  Created by Swift on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
//        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
        
    }
    
    
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting")
        
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

