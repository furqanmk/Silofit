import UIKit

final class RootCoordinator {
    private var navigationController: UINavigationController!
    private var loggedIn: Bool {
        false
    }

    /// Returns the appropriate view controller considering the log-in state of the app
    func start() -> UIViewController {
        navigationController = UINavigationController()
        setupNavigationBarStyle()
        
        if loggedIn {
            navigationController.setViewControllers([homeModule()], animated: true)
        } else {
            navigationController.setViewControllers([onboardingModule()], animated: true)
        }
        
        return navigationController
    }
    
    private func onboardingModule() -> UIViewController {
        return OnboardingBuilder.build(navigationController: navigationController)
    }
    
    private func homeModule() -> UIViewController {
        return HomeBuilder.build()
    }
    
    private func setupNavigationBarStyle() {
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.tintColor = Theme.primary
    }
}
