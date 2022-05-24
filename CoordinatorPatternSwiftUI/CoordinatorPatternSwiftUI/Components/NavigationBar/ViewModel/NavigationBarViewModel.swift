//
//  NavigationBarViewModel.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

struct NavigationBarViewModel {
    var title: String
    var backAction: (() -> ())
    
    init(title: String,
         backAction: @escaping (() -> ())) {
        self.title = title
        self.backAction = backAction
    }
}
