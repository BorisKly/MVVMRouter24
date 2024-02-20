//
//  MyBasicServiceFactory.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation

struct MyBasicServiceFactory<ServiceType>: MyServiceFactory {

    private let factory: (MyResolver) throws -> ServiceType

    init(_ type: ServiceType.Type, factory: @escaping (MyResolver) throws -> ServiceType) {
        self.factory = factory
    }

    func resolve(_ resolver: MyResolver) throws -> ServiceType {
        return try factory(resolver)
    }
}
