final class SignInRouter {
    private let onAuthentication: () -> Void
    
    init(onAuthentication: @escaping () -> Void) {
        self.onAuthentication = onAuthentication
    }
}

// MARK: Presenter To Router Protocol
extension SignInRouter: SignInRouterInput {
    func authenticatedSuccessfully() {
        onAuthentication()
    }
}
