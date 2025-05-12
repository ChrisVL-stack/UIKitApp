//
//  ViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 11/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemPurple
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello \(name) how are you today?!"
    }
    
    @IBAction func prumaryButtonTapped(_ sender: Any) {
        
        greetUser("Chris!!")
        view.backgroundColor = .white
    }
    
}

