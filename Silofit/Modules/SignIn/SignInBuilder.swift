import UIKit

final class SignInBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(onAuthentication: @escaping () -> Void) -> UIViewController {
        let router = SignInRouter(onAuthentication: onAuthentication)
        let interactor = SignInInteractor()
        let presenter = SignInPresenter(with: interactor, routerInput: router)

        let viewController = SignInViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
