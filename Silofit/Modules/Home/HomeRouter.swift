final class HomeRouter {
    private let onLogout: () -> Void
    
    init(onLogout: @escaping () -> Void) {
        self.onLogout = onLogout
    }
}

// MARK: Presenter To Router Protocol
extension HomeRouter: HomeRouterInput {
    func logout() {
        onLogout()
    }
}
