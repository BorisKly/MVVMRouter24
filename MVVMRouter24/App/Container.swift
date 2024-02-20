//
//  Container.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import Foundation
import Container24

private var container = Container24()

public func resolve<T>(_ item: T.Type) -> T {
    guard let value = try? container.resolve(item) else {
        fatalError("Can't find \(item)")
    }
    return value
}

public func register<T>(_ instance: T, for type: T.Type) {
    container = container.register(type, instance: instance)
}
