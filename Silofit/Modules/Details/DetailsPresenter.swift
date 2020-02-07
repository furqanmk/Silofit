final class DetailsPresenter {
    // MARK: Properties
    weak var viewInput: DetailsViewInput!
    let interactorInput: DetailsInteractorInput
    let routerInput: DetailsRouterInput

    // MARK: Initalizers
    init(with interactorInput: DetailsInteractorInput,
    	 routerInput: DetailsRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension DetailsPresenter: DetailsViewOutput {
	func viewIsReady() {

    }
}

// MARK: Interactor To Presenter Protocol
extension DetailsPresenter: DetailsInteractorOutput {

}
