//
//  AuthDestination.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

struct AuthDestination: Destination {

    var destination: UIViewController? {
        let register = AuthViewController(viewModel: AuthViewModel())
        return register
    }
}
