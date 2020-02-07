final class HomePresenter {
    // MARK: Properties
    weak var viewInput: HomeViewInput!
    let interactorInput: HomeInteractorInput
    let routerInput: HomeRouterInput

    // MARK: Initalizers
    init(with interactorInput: HomeInteractorInput,
    	 routerInput: HomeRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension HomePresenter: HomeViewOutput {
	func viewIsReady() {

    }
}

// MARK: Interactor To Presenter Protocol
extension HomePresenter: HomeInteractorOutput {

}
