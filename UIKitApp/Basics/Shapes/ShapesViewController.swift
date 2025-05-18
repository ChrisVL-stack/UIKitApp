//
//  ShapesViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 17/05/25.
//

import UIKit

class ShapesViewController: UIViewController {
    
    private var rectangle: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemBlue
        return view
    }()
    
    private var circle = UIView()
    
    private var capsule = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rectangle)
        rectangle.backgroundColor = .systemGreen // you can change the color even if you put it in variable
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        rectangle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rectangle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(circle)
        circle.backgroundColor = .systemBlue
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        circle.topAnchor.constraint(equalTo: rectangle.bottomAnchor, constant: 10).isActive = true
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        circle.layer.cornerRadius = 100 / 2
        
        view.addSubview(capsule)
        capsule.backgroundColor = .systemPurple
        capsule.translatesAutoresizingMaskIntoConstraints = false
        capsule.widthAnchor.constraint(equalToConstant: 200).isActive = true
        capsule.heightAnchor.constraint(equalToConstant: 50).isActive = true
        capsule.topAnchor.constraint(equalTo: circle.bottomAnchor, constant: 10).isActive = true
        capsule.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        capsule.layer.cornerRadius = 100 / 4
        
    }

}

#Preview {
    ShapesViewController()
}
