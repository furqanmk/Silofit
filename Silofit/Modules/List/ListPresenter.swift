final class ListPresenter {
    // MARK: Properties
    weak var viewInput: ListViewInput!
    let interactorInput: ListInteractorInput
    let routerInput: ListRouterInput

    // MARK: Initalizers
    init(with interactorInput: ListInteractorInput,
    	 routerInput: ListRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension ListPresenter: ListViewOutput {
	func viewIsReady() {

    }
}

// MARK: Interactor To Presenter Protocol
extension ListPresenter: ListInteractorOutput {

}
