//
//  AnyServiceFactory.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation

final class AnyServiceFactory {

    private let _resolve: (MyResolver) throws -> Any
    private let _supports: (Any.Type) -> Bool

    init<T: MyServiceFactory>(_ serviceFactory: T) {

        self._resolve = { resolver -> Any in
            try serviceFactory.resolve(resolver)
        }

        self._supports = { $0 == T.ServiceType.self }
    }

    func resolve<ServiceType>(_ resolver: MyResolver) throws -> ServiceType {
        return try _resolve(resolver) as! ServiceType
    }

    func supports<ServiceType>(_ serviceType: ServiceType.Type) -> Bool {
        return _supports(serviceType)
    }
}
