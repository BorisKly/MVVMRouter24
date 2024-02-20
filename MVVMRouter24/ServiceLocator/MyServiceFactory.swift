//
//  MyServiceFactory.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation

protocol MyServiceFactory {

    associatedtype ServiceType

    func resolve(_ resolver: MyResolver) throws -> ServiceType
}

extension MyServiceFactory {

    func supports<ServiceType>(_ type: ServiceType.Type) -> Bool {
        return type == ServiceType.self
    }
}
