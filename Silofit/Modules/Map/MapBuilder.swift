import UIKit

final class MapBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build(with spaces: [Space]) -> UIViewController {
        let router = MapRouter()
        let interactor = MapInteractor()
        let presenter = MapPresenter(with: interactor, routerInput: router, spaces: spaces)

        let viewController = MapViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
