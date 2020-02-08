import UIKit

final class OnboardingRouter {
    private let onSignIn: () -> Void
    private let onJoinNow: () -> Void
    
    init(onSignIn: @escaping () -> Void,
         onJoinNow: @escaping () -> Void) {
        self.onSignIn = onSignIn
        self.onJoinNow = onJoinNow
    }
}

// MARK: Presenter To Router Protocol
extension OnboardingRouter: OnboardingRouterInput {
    func openSignIn() {
        onSignIn()
    }
    
    func openJoinNow() {
        onJoinNow()
    }
}
