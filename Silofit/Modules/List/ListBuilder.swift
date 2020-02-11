import UIKit

final class ListBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(with spaces: [Space]) -> UIViewController {
        let router = ListRouter()
        let interactor = ListInteractor()
        let presenter = ListPresenter(with: interactor, routerInput: router, spaces: spaces)

        let viewController = ListViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
