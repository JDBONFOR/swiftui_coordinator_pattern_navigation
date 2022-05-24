//
//  Module1RouterFlowNavigator.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

/// Module1 Navigator
/// Define possibles routes to open by all App
import SwiftUI

/// Routes
enum Module1Routes {
    case page1
    case page2
    case page3
}

/// Navigator
final class Module1RouterFlowNavigator: Router {
    typealias Routes = Module1Routes
    
    var navigationController: AppNavigationController {
        AppRouter.shared.appNavigationController
    }
    
    func open(route: Module1Routes) {
        switch route {
            
        case .page1:
            let destinationView = Page1View(viewModel: Page1ViewModel())
            AppRouter.shared.setRootViewController(viewController: AppView.builder.makeView(destinationView))
        case .page2:
            let destinationView = Page2View()
            navigationController.pushViewController(AppView.builder.makeView(destinationView), animated: true)
        case .page3:
            let destinationView = Page3View()
            navigationController.pushViewController(AppView.builder.makeView(destinationView), animated: true)
        }
    }
}
