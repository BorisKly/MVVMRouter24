//
//  AuthViewController.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

protocol  AuthViewControllerDelegate: AnyObject {
    func goToMainView()
}

class AuthViewController: UIViewController {
    
    var viewModel: AuthViewModelProtocol
    
    public var mainView: AuthView? {
        return self.view as? AuthView
    }
    
    init(viewModel: AuthViewModelProtocol){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let codeView = AuthView(frame: CGRect.zero)
        self.view = codeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView?.delegate = self
    }
}

extension AuthViewController: AuthViewControllerDelegate {
    func goToMainView() {
        viewModel.goToMainView()
    }
}
