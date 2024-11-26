//
//  ViewControllerB.swift
//  UIKit9_NavigationModalUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 25/11/24.
//

import UIKit

class ViewControllerB: UIViewController {
    
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller B"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerB()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    func dismissViewControllerB() {
        dismiss(animated: true)
    }
}

