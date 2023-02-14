//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by GEORGII LITVINENKO on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String?
    
    private var colorTop = UIColor.magenta
    private var colorBottom = UIColor.cyan
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(userName!)!"
        addGradient()
    }
    
    private func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradient.locations = [0, 1]
        gradient.startPoint = CGPoint(x: 0.2, y: 0)
        gradient.endPoint = CGPoint(x: 0.3, y: 1)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }
}

