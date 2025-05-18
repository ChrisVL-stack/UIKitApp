//
//  StacksViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 17/05/25.
//

import UIKit

class StacksViewController: UIViewController {

    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rectangle1 = createRectangle()
        rectangle1.backgroundColor = .systemGreen
//        rectangle1.layer.cornerRadius = 200 / 2
        
        let rectangle2 = createRectangle()
        rectangle2.backgroundColor = .systemYellow
        
        let rectangle3 = createRectangle()
        rectangle3.backgroundColor = .systemRed
        
        stackView.addArrangedSubview(rectangle1)
        stackView.addArrangedSubview(rectangle2)
        stackView.addArrangedSubview(rectangle3)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    // Helper function
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
    }
    
}


#Preview {
    StacksViewController()
}
