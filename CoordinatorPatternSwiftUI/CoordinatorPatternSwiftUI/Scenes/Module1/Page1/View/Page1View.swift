//
//  Page1View.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

struct Page1View: View {
    private var viewModel: Page1ViewModel
    
    init(viewModel: Page1ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("Welcome to Page 1")
                .padding()
            
            VStack(alignment: .center, spacing: 20) {
                
                Button(action: {
                    viewModel.onGoToPage2ButtonTapAction()
                }) {
                    Text("Go to page 2")
                }
                
                Button(action: {
                    viewModel.onLogOutButtonTapAction()
                }) {
                    Text("Sign Out")
                }
                
                Button(action: {
                    viewModel.onTermsButtonTapAction()
                }) {
                    Text("Terms and conditions again")
                }
            }
        }
    }
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View(viewModel: Page1ViewModel())
    }
}
