//
//  Page1ViewModel.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import Foundation

struct Page1ViewModel {
    struct Dependencies {
        let genericRouter: GenericRouterFlowNavigator = GenericRouterFlowNavigator()
        let loginRouter: LoginRouterFlowNavigator = LoginRouterFlowNavigator()
        let module1Router: Module1RouterFlowNavigator = Module1RouterFlowNavigator()
    }
    
    private var dependencies: Dependencies
    
    init(dependencies: Dependencies = Dependencies()) {
        self.dependencies = dependencies
    }
}

// MARK: - Navigation
extension Page1ViewModel {
    func onGoToPage2ButtonTapAction() {
        dependencies.module1Router.open(route: .page2)
    }
    
    func onLogOutButtonTapAction() {
        dependencies.loginRouter.open(route: .login)
    }
    
    func onTermsButtonTapAction() {
        dependencies.genericRouter.open(route: .terms(TermsAndConditionsViewModel()))
    }
}
