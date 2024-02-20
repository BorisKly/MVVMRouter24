//
//  Collection+FirstToResolve.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

//import Foundation
//
//extension Collection where Index == Int {
//
//    func firstToResolve<ServiceType>(_ factory: (Element) throws -> ServiceType) throws -> ServiceType {
//        for element in self {
//            if let resolved = try? factory(element) { return resolved }
//        }
//
//        throw SomeContainer.unableToResolve(ServiceType.self)
//    }
//}
