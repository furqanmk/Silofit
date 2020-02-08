final class JoinNowRouter {
    private let onAuthentication: () -> Void
    
    init(onAuthentication: @escaping () -> Void) {
        self.onAuthentication = onAuthentication
    }
}

// MARK: Presenter To Router Protocol
extension JoinNowRouter: JoinNowRouterInput {
    func authenticatedSuccessfully() {
        onAuthentication()
    }
}
