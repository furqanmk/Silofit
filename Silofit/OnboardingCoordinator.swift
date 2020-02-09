import UIKit

final class OnboardingCoordinator: Coordinator {
    private weak var navigationController: UINavigationController?
    private let onAuthentication: () -> Void
    
    init(_ navigationController: UINavigationController?, onAuthentication: @escaping () -> Void) {
        self.navigationController = navigationController
        self.onAuthentication = onAuthentication
    }
    
    func start() -> UIViewController {
        setupNavigationBar()
        return OnboardingBuilder.build(onSignIn: onSignIn,
                                       onJoinNow: onJoinNow)
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = Theme.primary
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
