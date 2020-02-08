import FBSDKCoreKit
import UIKit

protocol Coordinator: class {
    func start() -> UIViewController
}

final class RootCoordinator: Coordinator {
    // MARK: - Properties
    private var navigationController: UINavigationController!
    
    private var loggedIn: Bool {
        AccessToken.current != nil
    }
    
    // MARK: - Initializers
    init(_ navigationController: UINavigationController?) {
        self.navigationController = UINavigationController()
        self.setupNavigationBarStyle()
    }

    /// Returns the appropriate view controller considering the log-in state of the app
    func start() -> UIViewController {
        let coordinator: Coordinator = loggedIn ?
            HomeCoordinator(navigationController) :
            OnboardingCoordinator(navigationController, onAuthentication: onAuthentication)
        navigationController.setViewControllers([coordinator.start()], animated: true)
        return navigationController
    }
    
    private func onAuthentication() {
        let coordinator = HomeCoordinator(navigationController)
        navigationController.setViewControllers([coordinator.start()], animated: true)
    }
    
    private func setupNavigationBarStyle() {
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.tintColor = Theme.primary
    }
}
