//
//  StacksTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Clement Ang on 24/11/25.
//

import UIKit

class StacksTutorialViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect1 = createReactangle()
        rect1.backgroundColor = .systemPurple
        
        let rect2 = createReactangle()
        rect2.backgroundColor = .systemPink
        
        let rect3 = createReactangle()
        rect3.backgroundColor = .systemBlue
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createReactangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100).isActive = true
        view.layer.cornerRadius = 16
        return view
    }

}

#Preview {
    StacksTutorialViewController()
}
