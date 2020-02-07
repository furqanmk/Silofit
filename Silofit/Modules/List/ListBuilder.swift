import UIKit

final class ListBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = ListRouter()
        let interactor = ListInteractor()
        let presenter = ListPresenter(with: interactor, routerInput: router)

        let viewController = ListViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
