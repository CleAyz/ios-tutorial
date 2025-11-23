//
//  ImagesTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Clement Ang on 22/11/25.
//

import UIKit

class ImagesTutorialViewController: UIViewController {
    
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.tintColor = .red
        imageView.backgroundColor = .blue
        imageView.image = UIImage(systemName: "paperplane")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    

}

#Preview {
    ImagesTutorialViewController()
}
