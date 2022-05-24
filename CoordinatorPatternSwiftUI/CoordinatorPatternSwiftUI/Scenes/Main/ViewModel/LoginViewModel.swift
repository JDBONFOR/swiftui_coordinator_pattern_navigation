//
//  LoginViewModel.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import Foundation

struct LoginViewModel {
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
extension LoginViewModel {
    func onLoginButtonTapAction() {
        dependencies.module1Router.open(route: .page1)
    }
    
    func onRegisterButtonTapAction() {
        dependencies.loginRouter.open(route: .register)
    }
    
    func onTermsButtonTapAction() {
        dependencies.genericRouter.open(route: .terms(TermsAndConditionsViewModel()))
    }
}
