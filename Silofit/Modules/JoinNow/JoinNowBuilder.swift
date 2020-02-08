import UIKit

final class JoinNowBuilder {
    // MARK: Initalizers
    private init() { }

    // MARK: Builder
    static func build() -> UIViewController {
        let router = JoinNowRouter()
        let interactor = JoinNowInteractor()
        let presenter = JoinNowPresenter(with: interactor, routerInput: router)

        let viewController = JoinNowViewController(viewOutput: presenter)
        presenter.viewInput = viewController
        interactor.interactorOutput = presenter

        return viewController
    }
}
