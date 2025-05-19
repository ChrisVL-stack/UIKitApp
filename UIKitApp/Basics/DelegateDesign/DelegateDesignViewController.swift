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
        
    }
}

#Preview {
    DelegateDesignViewController()
}
