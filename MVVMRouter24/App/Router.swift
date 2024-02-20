//
//  Router.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

protocol Router {
    var currentViewController: UIViewController? { get }

    @discardableResult
    func route(to: Destination, animated: Bool) -> UIViewController?

    func showError(title: String, message: String)

    func showInfo(vc: UIViewController, popoverVC: UIViewController)
}
