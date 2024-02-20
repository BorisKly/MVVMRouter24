//
//  MyContainer+unableToResolve.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation

extension MyContainer {
    public static func unableToResolve<ServiceType>(_ type: ServiceType.Type) -> Error {
        return .factoryNotFound(service: type)
    }

    public enum Error: Swift.Error, Equatable {
        public static func == (lhs: MyContainer.Error, rhs: MyContainer.Error) -> Bool {
            switch (lhs, rhs) {
            case let (.factoryNotFound(lhsType), .factoryNotFound(rhsType)):
                return lhsType == rhsType
            }
        }

        case factoryNotFound(service: Any.Type)
    }
}
