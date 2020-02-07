import UIKit

final class OnboardingBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(navigationController: UINavigationController) -> UIViewController {
        let router = OnboardingRouter(navigationController: navigationController)
        let interactor = OnboardingInteractor()
        let presenter = OnboardingPresenter(with: interactor, routerInput: router)

        let viewController = OnboardingViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
