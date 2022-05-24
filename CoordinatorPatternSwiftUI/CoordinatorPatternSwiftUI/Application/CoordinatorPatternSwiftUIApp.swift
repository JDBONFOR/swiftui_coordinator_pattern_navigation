//
//  CoordinatorPatternSwiftUIApp.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

@main
struct CoordinatorPatternSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootNavigationController(nav: AppRouter.shared.appNavigationController,
                                     rootView: LoginView(viewModel: LoginViewModel()))
            .edgesIgnoringSafeArea(.all)
        }
    }
}
