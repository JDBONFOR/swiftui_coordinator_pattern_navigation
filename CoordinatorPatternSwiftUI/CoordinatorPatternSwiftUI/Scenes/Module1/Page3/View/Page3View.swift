//
//  Page3View.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

struct Page3View: View {
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("Welcome to Page 3")
                .padding()
            
            VStack(alignment: .center, spacing: 20) {
                
                Button(action: {
                    GenericRouterFlowNavigator().popToRoot()
                }) {
                    Text("Pop to root")
                }
                
            }
        }
    }
}

struct Page3View_Previews: PreviewProvider {
    static var previews: some View {
        Page3View()
    }
}
