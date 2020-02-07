import UIKit

final class SignInBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = SignInRouter()
        let interactor = SignInInteractor()
        let presenter = SignInPresenter(with: interactor, routerInput: router)

        let viewController = SignInViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
