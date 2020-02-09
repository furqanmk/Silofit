import UIKit

final class HomeBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(onLogout: @escaping () -> Void) -> UIViewController {
        let router = HomeRouter(onLogout: onLogout)
        let interactor = HomeInteractor()
        let presenter = HomePresenter(with: interactor, routerInput: router)

        let viewController = HomeViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
