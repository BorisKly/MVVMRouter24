//
//  MainViewModel.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

protocol  MainViewModelProtocol {

}

class MainViewModel: MainViewModelProtocol {

    private var router: Router {
        resolve(Router.self)
    }

    func showError() {
        router.showError(title: "Error", message: "empty fields are not allowed")
    }
}
