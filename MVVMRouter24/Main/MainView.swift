//
//  MainView.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//


import UIKit

class MainView: UIView {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = .yellow
    }
    
}
