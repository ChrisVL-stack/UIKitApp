//
//  LabelsViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 11/05/25.
//

import UIKit

class LabelsViewController: UIViewController {

    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Helllo how are you, I´m just learning UIKit"
        label.textColor = .gray
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = "Hello, World!"
        textLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        
    }
    
}


#Preview {
    LabelsViewController()
}
