import SwiftUI

struct LoginView: View {
    private var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
    }    
    
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("Welcome to CoordinatorPatter on SwiftUI")
                .padding()
                .multilineTextAlignment(.center)
            
            VStack(alignment: .center, spacing: 20) {
                
                
                Button(action: {
                    viewModel.onLoginButtonTapAction()
                }) {
                    Text("Log In")
                }
                
                Button(action: {
                    viewModel.onRegisterButtonTapAction()
                }) {
                    Text("Register")
                }
                
                Button(action: {
                    viewModel.onTermsButtonTapAction()
                }) {
                    Text("Terms and conditions")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel())
    }
}
