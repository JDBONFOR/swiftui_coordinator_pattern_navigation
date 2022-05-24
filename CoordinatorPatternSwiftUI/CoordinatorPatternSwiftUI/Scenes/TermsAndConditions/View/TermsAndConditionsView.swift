//
//  TermsAndConditionsView.swift
//  CoordinatorPatternSwiftUI
//
//  Created by Juan Bonforti on 24/05/2022.
//

import SwiftUI

struct TermsAndConditionsView: View {
    @ObservedObject private var viewModel: TermsAndConditionsViewModel
    
    init(viewModel: TermsAndConditionsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("Welcome to Terms And Conditions...")
    }
}

struct TermsAndConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        TermsAndConditionsView(viewModel: TermsAndConditionsViewModel())
    }
}
