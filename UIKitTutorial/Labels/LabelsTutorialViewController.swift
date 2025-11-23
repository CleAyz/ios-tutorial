//
//  LabelsTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Clement Ang on 21/11/25.
//

import UIKit

class LabelsTutorialViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subTitle: UILabel = {
        let label = UILabel()
        label.text = "this is sub title"
        label.textColor = .gray
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "hello world!"
        textLabel.font = UIFont.systemFont(ofSize: 30)
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints  = false
        subTitle.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10).isActive = true
        subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}

#Preview {
    LabelsTutorialViewController()
}
