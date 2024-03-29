//
//  MainViewController.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//
import UIKit

protocol  MainViewControllerDelegate: AnyObject {
    func goToAuthView()
    func networkRequest()
}

class MainViewController: UIViewController {

    var viewModel: MainViewModelProtocol
    
    public var mainView: MainView? {
        return self.view as? MainView
    }
    
    init(viewModel: MainViewModelProtocol){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let codeView = MainView(frame: CGRect.zero)
        self.view = codeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView?.delegate = self
    }

}

extension MainViewController: MainViewControllerDelegate {
    func networkRequest() {
        viewModel.networkRequest()
    }
    
    func goToAuthView() {
        viewModel.goToAuthView()
    }
}
