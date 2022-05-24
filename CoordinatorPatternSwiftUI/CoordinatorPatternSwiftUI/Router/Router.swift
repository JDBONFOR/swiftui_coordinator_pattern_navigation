//
//  Router.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

protocol Router: ObservableObject {
    var navigationController: AppNavigationController { get }
    associatedtype Routes
    
    func open(route: Routes)
    func popToRoot()
}

extension Router {
    func pop(_ animation: Bool = true, dismissHandler: @escaping ()->() = {}) {
        navigationController.popViewController(animated: animation)
        dismissHandler()
    }
    
    func popToRoot() {
        navigationController.popToRootViewController(animated: true)
    }
    
    func dismiss(dismissHandler: @escaping ()->() = {}) {
        navigationController.dismiss(animated: true, completion: dismissHandler)
    }
    
    func popTo<T: View>(view: T.Type) {
        for viewController in navigationController.viewControllers.reversed() {
            if viewController as? CustomHostingController<T> != nil {
                navigationController.popToViewController(viewController, animated: true)
            }
        }
    }
}

