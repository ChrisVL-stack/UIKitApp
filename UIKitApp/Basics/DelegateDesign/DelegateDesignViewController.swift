//
//  DelegateDesignViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 18/05/25.
//

import UIKit

class DelegateDesignViewController: UIViewController {

    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.blue.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        actionButtonView.delegate = self
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        textLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold    )
        textLabel.textColor = .systemGreen
        textLabel.text = "Primary Action Button tapped"
        textLabel.isHidden = true
    }
}

extension DelegateDesignViewController: ActionButtonViewDelegate {
    func onPrimaryTap() {
        print("DEBUG: Primary tapped in view controller..")
        textLabel.isHidden = false
    }
    
    func onSecondaryTap() {
        print("DEBUG: Secondary tapped in view controller..")
        textLabel.isHidden = true
    }
    
    
}

#Preview {
    DelegateDesignViewController()
}
