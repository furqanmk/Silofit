import UIKit

final class HomeBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = HomeRouter()
        let interactor = HomeInteractor()
        let presenter = HomePresenter(with: interactor, routerInput: router)

        let viewController = HomeViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
