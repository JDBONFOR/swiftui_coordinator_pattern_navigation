//
//  GenericRouterFlowNavigator.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

/// Generic Navigator
/// Define possibles routes to open by all App
import SwiftUI

/// Routes
enum GenericRoutes {
    case url(url: String)
    case terms(TermsAndConditionsViewModel)
}

/// Navigator
final class GenericRouterFlowNavigator: Router {
    typealias Routes = GenericRoutes
    
    var navigationController: AppNavigationController {
        AppRouter.shared.appNavigationController
    }
    
    func open(route: GenericRoutes) {
        switch route {
        case .url(let url):
            if let url = URL(string: url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        case .terms(let viewModel):
            let destinationView = TermsAndConditionsView(viewModel: viewModel)
            navigationController.pushViewController(AppView.builder.makeView(destinationView, navTitle: "Terms And Conditions"), animated: true)
        }
    }
}
