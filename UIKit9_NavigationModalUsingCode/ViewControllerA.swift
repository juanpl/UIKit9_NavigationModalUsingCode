//
//  ViewController.swift
//  UIKit9_NavigationModalUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 25/11/24.
//

import UIKit

class ViewControllerA: UIViewController {
    
    private lazy var swiftbetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(swiftbetaButton)
        
        NSLayoutConstraint.activate([
            swiftbetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftbetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        // Do any additional setup after loading the view.
    }
    
    func startNavigation(){
        print("Navigation")
    }


}

