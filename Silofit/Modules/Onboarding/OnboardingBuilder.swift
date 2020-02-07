import UIKit

final class OnboardingBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = OnboardingRouter()
        let interactor = OnboardingInteractor()
        let presenter = OnboardingPresenter(with: interactor, routerInput: router)

        let viewController = OnboardingViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
