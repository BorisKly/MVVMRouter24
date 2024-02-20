//
//  MyContainer+MyResolver.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

//import Foundation
//
//extension MyContainer: MyResolver {
//    public var resolver: MyResolver { return self as Resolver }
//
//    public func resolve<ServiceType>(_ type: ServiceType.Type) throws -> ServiceType {
//        guard let factory = factories.first(where: { $0.supports(type) }) else {
//            guard let resolvedByDependency = try dependency?.resolve(type) else {
//                throw SomeContainer.unableToResolve(type)
//            }
//
//            return resolvedByDependency
//        }
//
//        return try factory.resolve(self)
//    }
//
//    public func resolve<ServiceType>() throws -> ServiceType {
//        return try resolve(ServiceType.self)
//    }
//}
