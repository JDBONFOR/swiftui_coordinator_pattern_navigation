//
//  Page2.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("Welcome to Page 2")
                .padding()
            
            VStack(alignment: .center, spacing: 20) {
                
                
                Button(action: {
                    Module1RouterFlowNavigator().open(route: .page3)
                }) {
                    Text("Go to page 3")
                }
                
            }
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2View()
    }
}
