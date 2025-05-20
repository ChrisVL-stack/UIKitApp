//
//  ActionButtonView.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 18/05/25.
//

import UIKit

protocol ActionButtonViewDelegate: AnyObject {
    func onPrimaryTap()
    func onSecondaryTap()
}

class ActionButtonView: UIView {
    
    weak var delegate: ActionButtonViewDelegate?
    
    private var primaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Primary Action", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        return button
    }()
    
    private var secondaryActionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Secondary Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .gray
        layer.cornerRadius = 16
        
        // here you don have to put view.addSubview() becuase we are already in a UIView unlike in UIViewController
        addSubview(primaryActionButton)
        primaryActionButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primaryActionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        primaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        primaryActionButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(secondaryActionButton)
        secondaryActionButton.topAnchor.constraint(equalTo: primaryActionButton.bottomAnchor, constant: 16).isActive = true
        secondaryActionButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        secondaryActionButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        secondaryActionButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        primaryActionButton.addTarget(self, action: #selector(handlePrimaryTap), for: .touchUpInside)
        secondaryActionButton.addTarget(self, action: #selector(handleSecondaryTap), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handlePrimaryTap() {
        print("DEBUG: Primary button touch in view..")
        delegate?.onPrimaryTap()
    }
    
    @objc func handleSecondaryTap() {
        print("DEBUG: Secondary button touch in view..")
        delegate?.onSecondaryTap()
    }
    
}

#Preview {
    ActionButtonView()
}
