//
//  MainDestination.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

struct MainDestination: Destination {

    var destination: UIViewController? {
        let register = MainViewController(viewModel: MainViewModel())
        return register
    }
}
