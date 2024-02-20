//
//  AuthView.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

class AuthView: UIView {
   
    weak public var delegate: AuthViewControllerDelegate?

    let button: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 50, y: 100, width: 200, height: 60)
        button.setTitle("GoToMain", for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(goToMainView), for: .touchUpInside)
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
        self.backgroundColor = .green
        self.addSubview(button)
    }
    
    @objc func goToMainView() {
        print(#function)
        delegate?.goToMainView()
    }
    
}
