import UIKit

final class LoginBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = LoginRouter()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(with: interactor, routerInput: router)

        let viewController = LoginViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
