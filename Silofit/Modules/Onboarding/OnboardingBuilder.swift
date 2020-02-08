import UIKit

final class OnboardingBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(onSignIn: @escaping () -> Void,
                      onJoinNow: @escaping () -> Void) -> UIViewController {
        let router = OnboardingRouter(onSignIn: onSignIn,
                                      onJoinNow: onJoinNow)
        let interactor = OnboardingInteractor()
        let presenter = OnboardingPresenter(with: interactor, routerInput: router)

        let viewController = OnboardingViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
