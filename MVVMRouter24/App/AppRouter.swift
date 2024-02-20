//
//  AppRouter.swift
//  MVVMRouter24
//
//  Created by Borys Klykavka on 19.02.2024.
//

import UIKit

class AppRouter: Router {

    private let navigationController: UINavigationController

    public var currentViewController: UIViewController? {
        return navigationController.topViewController
    }
    
    init(window: UIWindow) {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        self.navigationController = navigationController
        navigationController.navigationBar.isHidden = true
        window.makeKeyAndVisible()
    }

    @discardableResult

    public func route(to destination: Destination, animated: Bool = true) -> UIViewController? {
        guard let newViewController = destination.destination else { return nil }
        show(viewController: newViewController, animated: animated)
        return newViewController
    }
    public func routePresent(to destination: Destination, animated: Bool = true) -> UIViewController? {
        guard let newViewController = destination.destination else { return nil }
        presentOnly(viewController: newViewController, animated: animated)
        return newViewController
    }

    public func showError(title: String, message text: String) {
        let alertController = UIAlertController(title: title, message: text, preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action: UIAlertAction) -> Void in
            alertController.dismiss(animated: true)
        }
        alertController.addAction(cancel)
        currentViewController?.present(alertController, animated: true)
    }

    public func showInfo(vc: UIViewController, popoverVC: UIViewController) {
        popoverVC.modalPresentationStyle = .popover
        popoverVC.modalTransitionStyle = .flipHorizontal
        vc.present(popoverVC, animated: true)
    }

    private func show(viewController contr: UIViewController, animated: Bool = true) {
        guard currentViewController != contr else { return }
        self.navigationController.pushViewController(contr, animated: animated)
        self.navigationController.setViewControllers([contr], animated: animated)
    }

    private func presentOnly(viewController contr: UIViewController, animated: Bool = true) {
        guard currentViewController != contr else { return }
        self.navigationController.pushViewController(contr, animated: animated)
    }
}

