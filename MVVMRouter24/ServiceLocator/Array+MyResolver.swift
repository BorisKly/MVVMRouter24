//
//  Array+MyResolver.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

//import Foundation
//
//extension Array: MyResolver where Element == Resolver {
//
//    public func resolve<ServiceType>(_ type: ServiceType.Type) throws -> ServiceType {
//        guard !isEmpty else { throw EmptyResolverError() }
//
//        return try firstToResolve({ try $0.resolve(type) })
//    }
//
//    public func resolve<ServiceType>() throws -> ServiceType {
//        return try resolve(ServiceType.self)
//    }
//
//    struct EmptyResolverError: Error { }
//}
