//
//  ViewController.swift
//  UIKitTutorial
//
//  Created by Clement Ang on 20/11/25.
//

import UIKit

class ViewController: UIViewController {
    // Intro to storyboard

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        greetingLabel.textAlignment = .center
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello, \(name)!"
    }
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        print("DEBUG: Button tapped...")
        greetUser("Clement")
        view.backgroundColor = .white
    }
    

}

