//
//  ButtonViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 11/05/25.
//

import UIKit

class ButtonViewController: UIViewController {
    
    private lazy var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.setTitleColor(.green, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "My name is Chris, and i´m learning UIJit"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        showNameButton.addTarget(self, action: #selector(onShowNameTapped), for: .touchUpInside)

        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 32).isActive = true
        
    }
    
    @objc func onShowNameTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show text" : "Hide text"
        showNameButton.setTitle(title, for: .normal)
    }
    
}


#Preview {
    ButtonViewController()
}
