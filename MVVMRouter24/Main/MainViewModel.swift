//
//  MainViewModel.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

protocol  MainViewModelProtocol {
    func goToAuthView()
    func networkRequest()
}

class MainViewModel: MainViewModelProtocol {
 

    private var router: Router {
        resolve(Router.self)
    }
    private var network: NetworkServiceProtocol {
        resolve(NetworkServiceProtocol.self)
    }

    func showError() {
        router.showError(title: "Error", message: "empty fields are not allowed")
    }
    
    func goToAuthView() {
        router.route(to: AuthDestination(), animated: true)
        
    }
    
    func networkRequest() {
        print(#function)
        network.fetchData()
    }
    
}
