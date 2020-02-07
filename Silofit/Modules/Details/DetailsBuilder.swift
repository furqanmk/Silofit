import UIKit

final class DetailsBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = DetailsRouter()
        let interactor = DetailsInteractor()
        let presenter = DetailsPresenter(with: interactor, routerInput: router)

        let viewController = DetailsViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
