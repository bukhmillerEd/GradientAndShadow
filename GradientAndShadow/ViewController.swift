//
//  ViewController.swift
//  GradientAndShadow
//
//  Created by Эдуард Бухмиллер on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let viewWthGraient: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLayoutSubviews() {
        addGradientOnView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        applyConstraints()
    }
    
    private func addSubview() {
        view.addSubview(viewWthGraient)
    }
    
    private func applyConstraints() {
        NSLayoutConstraint.activate([
            viewWthGraient.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            viewWthGraient.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            viewWthGraient.widthAnchor.constraint(equalToConstant: 100),
            viewWthGraient.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func addGradientOnView() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.type = .axial
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = viewWthGraient.bounds
        gradientLayer.cornerRadius = 15
        gradientLayer.shadowRadius = 10
        gradientLayer.shadowColor = UIColor.black.cgColor
        gradientLayer.shadowOffset = .zero
        gradientLayer.shadowOpacity = 0.5
        viewWthGraient.layer.addSublayer(gradientLayer)
    }
    
}

