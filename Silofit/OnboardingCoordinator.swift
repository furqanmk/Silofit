import UIKit

final class OnboardingCoordinator: Coordinator {
    private weak var navigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() -> UIViewController {
        OnboardingBuilder.build(onSignIn: onSignIn,
                                onJoinNow: onJoinNow)
    }
    
    private func onSignIn() {
        navigationController?.pushViewController(SignInBuilder.build(), animated: true)
    }
    
    private func onJoinNow() {
        // navigationController?.pushViewController(JoinNowBuilder.build(), animated: true)
    }
}
