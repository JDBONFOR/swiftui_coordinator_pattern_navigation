//
//  LoginRouterFlowNavigator.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

/// Module1 Navigator
/// Define possibles routes to open by all App
import SwiftUI

/// Routes
enum LoginRoutes {
    case login
    case register
}

/// Navigator
final class LoginRouterFlowNavigator: Router {
    typealias Routes = LoginRoutes
    
    var navigationController: AppNavigationController {
        AppRouter.shared.appNavigationController
    }
    
    func open(route: LoginRoutes) {
        switch route {
            
        case .login:
            let destinationView = LoginView(viewModel: LoginViewModel())
            AppRouter.shared.setRootViewController(viewController: AppView.builder.makeView(destinationView))
        case .register:
            print("Must navigate to ...")
        }
    }
}
