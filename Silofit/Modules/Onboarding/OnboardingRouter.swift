import UIKit

final class OnboardingRouter {
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}

// MARK: Presenter To Router Protocol
extension OnboardingRouter: OnboardingRouterInput {
    func openSignIn() {
        let viewController = SignInBuilder.build()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func openJoinNow() {
        //
    }
}
