//
//  SccrollViewViewController.swift
//  UIKitApp
//
//  Created by Christian Vladimir Garzón Gallardo on 17/05/25.
//

import UIKit

class SccrollViewViewController: UIViewController {

    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRects = 25
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in 1 ..< numberOfRects {
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRects)) + 150
        
        scrollView.delegate = self
    }
    
    // helper function
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemGray
        view.layer.cornerRadius = 16
        return view
    }
}

extension SccrollViewViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("DEBUG: scroll offset \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("DEBUG: Scroll view did end decel..")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("DEBUG: Scroll view did end drag..")
    }
    
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("DEBUG: Scroll view did scroll to top..")
    }
}

#Preview {
    SccrollViewViewController()
}
