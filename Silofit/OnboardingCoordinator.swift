import UIKit

final class OnboardingCoordinator: Coordinator {
    private weak var navigationController: UINavigationController?
    private let onAuthentication: () -> Void
    
    init(_ navigationController: UINavigationController?, onAuthentication: @escaping () -> Void) {
        self.navigationController = navigationController
        self.onAuthentication = onAuthentication
    }
    
    func start() -> UIViewController {
        OnboardingBuilder.build(onSignIn: onSignIn,
                                onJoinNow: onJoinNow)
    }
    
    private func onSignIn() {
        navigationController?
            .pushViewController(SignInBuilder.build(onAuthentication: onAuthentication),
                                animated: true)
    }
    
    private func onJoinNow() {
        navigationController?
            .pushViewController(JoinNowBuilder.build(onAuthentication: onAuthentication),
                                animated: true)
    }
}
