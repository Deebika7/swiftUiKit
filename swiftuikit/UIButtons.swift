//
//  SecondScreenViewController.swift
//  swiftuikit
//
//  Created by deebika-pt6680 on 18/04/23.
//

import UIKit

//BUTTONS UIButton -> UIControl -> UIView -> UIResponder ->NSObject.

class UIButtons: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        //button
        addButtonConstraints()
        setConfigurations()
    }
    
    func setConfigurations() {
//        button.configuration = .filled()
//        button.configuration = .gray()
        button.configuration = .tinted()
        button.configuration?.title = "button"
        button.configuration?.baseForegroundColor = .systemYellow
        button.configuration?.baseBackgroundColor = .systemRed
        button.configuration?.image = UIImage(systemName: "book.fill")
        button.configuration?.imagePadding = 6
        button.configuration?.imagePlacement = .top
        button.configuration?.subtitle = "subtitle "
        button.configuration?.cornerStyle = .capsule
        button.contentMode = .scaleAspectFit
//        button.setTitle("button", for: .normal)
//        button.backgroundColor = .systemRed
//        button.setTitleColor(.systemYellow, for: .normal)
    }
    func addButtonConstraints() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    
    
}
