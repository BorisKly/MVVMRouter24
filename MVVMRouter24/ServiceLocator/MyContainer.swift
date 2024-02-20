//
//  MyContainer.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation

public class MyContainer {

    let dependency: MyResolver?
    let factories: [AnyServiceFactory]

    public init(dependency: MyResolver? = nil) {
        self.dependency = dependency
        self.factories = []
    }
    init(dependency: MyResolver? = nil, factories: [AnyServiceFactory]) {
        self.dependency = dependency
        self.factories = factories
    }

    public func register<ServiceType>(_ interface: ServiceType.Type,
                                      instance: ServiceType) -> MyContainer {
        return register(interface) { _ in instance }
    }

    public func register<ServiceType>(_ interface: ServiceType.Type,
                                      _ factory: @escaping (MyResolver) -> ServiceType) -> MyContainer {

        let newFactory = MyBasicServiceFactory<ServiceType>(interface, factory: { resolver in
            factory(resolver)
        })
        return .init(dependency: dependency, factories: factories + [AnyServiceFactory(newFactory)])
    }
}
