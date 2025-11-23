//
//  ButtonTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Clement Ang on 21/11/25.
//

import UIKit

class ButtonTutorialViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Person A", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 1
        button.addTarget(self, action:  #selector(showOnNameTapped(_:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var showNameButtonTwo: UIButton = {
        let button2 = UIButton(type: .system)
        button2.setTitle("Person B", for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button2.setTitleColor(.white, for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.tag = 2
        button2.addTarget(self, action:  #selector(showOnNameTapped(_:)), for: .touchUpInside)
        // fyi: objc fn does not allow args. Another option is to use vm.
        return button2
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(showNameButtonTwo)
        showNameButtonTwo.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButtonTwo.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButtonTwo.backgroundColor = .systemBlue
        showNameButtonTwo.layer.cornerRadius = 10
        showNameButtonTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButtonTwo.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive = true
        
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButtonTwo.bottomAnchor, constant: 16).isActive = true
    }
    
    @objc func showOnNameTapped(_ sender: UIButton) {
        nameLabel.isHidden = false
        if showNameButton.isHidden == true || showNameButtonTwo.isHidden == true {
            nameLabel.isHidden = true
        }
        if sender.tag == 1 {
            nameLabel.text = "Person A selected"
            showNameButtonTwo.isHidden.toggle()
            let title = showNameButtonTwo.isHidden ? "Restart" : "Person A"
            showNameButton.setTitle(title, for: .normal)
        } else if sender.tag == 2 {
            nameLabel.text = ""
            nameLabel.text = "Person B selected"
            showNameButton.isHidden.toggle()
            let title2 = showNameButton.isHidden ? "Restart" : "Person B"
            showNameButtonTwo.setTitle(title2, for: .normal)
        }
        
    }
    
}

#Preview {
    ButtonTutorialViewController()
}
