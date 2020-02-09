import FBSDKCoreKit
import FBSDKLoginKit
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
    
    private lazy var homeCoordinator: Coordinator = {
        HomeCoordinator(navigationController, onLogout: onLogout)
    }()
    
    private lazy var onboardingCoordinator: Coordinator = {
        OnboardingCoordinator(navigationController, onAuthentication: onAuthentication)
    }()
    
    // MARK: - Initializers
    init(_ navigationController: UINavigationController?) {
        self.navigationController = UINavigationController()
    }

    /// Returns the appropriate view controller considering the log-in state of the app
    func start() -> UIViewController {
        let coordinator: Coordinator = loggedIn ? homeCoordinator : onboardingCoordinator
        navigationController.setViewControllers([coordinator.start()], animated: true)
        return navigationController
    }
    
    private func onAuthentication() {
        navigationController.setViewControllers([homeCoordinator.start()], animated: true)
    }
    
    private func onLogout() {
        LoginManager().logOut()
        navigationController.setViewControllers([onboardingCoordinator.start()], animated: true)
    }
}
