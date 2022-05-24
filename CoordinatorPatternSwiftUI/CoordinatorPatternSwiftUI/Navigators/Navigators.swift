//
//  Navigators.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

/// Navigation controllers definitions for module
typealias AppNavigationController = UINavigationController

public class AppRouter {
    public static let shared: AppRouter = AppRouter()
    
    let appNavigationController = AppNavigationController()
    
    public func setRootViewController(viewController: UIViewController) {
        appNavigationController.setViewControllers([viewController], animated: false)
    }
}

/// UIViewControllers Wrapper generator
final class AppView {
    static let builder = AppView()
    
    private init() {}
    
    func makeView<T: View>(_ view: T) -> UIViewController {
        CustomHostingController(rootView: view)
    }
}

/// SwiftUI HostingController Wrapper
class CustomHostingController<Content>: UIHostingController<AnyView> where Content: View {
    public init(rootView: Content) {
        let content = rootView
        super.init(rootView: AnyView(content))
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

struct RootNavigationController<RootView: View>: UIViewControllerRepresentable {
    let nav: UINavigationController
    let rootView: RootView
    
    init(nav: UINavigationController, rootView: RootView) {
        self.nav = nav
        self.rootView = rootView
    }

    func makeUIViewController(context: Context) -> UINavigationController {
        let vc = CustomHostingController(rootView: rootView)
        nav.addChild(vc)
        return nav
    }

    func updateUIViewController(_ pageViewController: UINavigationController, context: Context) { }
}
