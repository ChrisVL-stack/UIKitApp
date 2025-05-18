//
//  TextFieldViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 17/05/25.
//

import UIKit

class TextFieldViewController: UIViewController {

//    private lazy var textField: UITextField = {
    private var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search..."
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.returnKeyType = .continue
//        tf.delegate = self
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)

        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("DEBUG: Textfield text is \(sender.text ?? "NO TEXT")")
    }
    
}

extension TextFieldViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: Return key tappet..")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
            print("DEBUG: Did begin editing..")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
            print("DEBUG: Did end editing..")
    }
    
}

#Preview {
    TextFieldViewController()
}
