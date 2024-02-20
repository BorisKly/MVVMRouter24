//
//  MainView.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//


import UIKit

class MainView: UIView {
    
    
    weak public var delegate: MainViewControllerDelegate?

    let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 100, width: 200, height: 60)
        button.setTitle("GoToAuth", for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(goToAuthView), for: .touchUpInside)
        return button
    }()
    
    let networkButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 300, width: 200, height: 60)
        button.setTitle("NetworkRequest", for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(networkRequest), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = .yellow
        self.addSubview(button)
        self.addSubview(networkButton)
    }
    
    @objc func goToAuthView() {
        print(#function)
        delegate?.goToAuthView()
    }
    
    @objc func networkRequest() {
        print(#function)
        delegate?.networkRequest()
    }
    
}
