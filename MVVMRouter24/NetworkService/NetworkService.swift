//
//  NetworkService.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 20.02.2024.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchData()
}

class NetworkService: NetworkServiceProtocol {
    func fetchData() {
        print(#function)
    }
}


