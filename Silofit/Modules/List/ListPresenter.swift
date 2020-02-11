final class ListPresenter {
    // MARK: Properties
    weak var viewInput: ListViewInput!
    let interactorInput: ListInteractorInput
    let routerInput: ListRouterInput
    let spaces: [Space]

    // MARK: Initalizers
    init(with interactorInput: ListInteractorInput,
    	 routerInput: ListRouterInput,
         spaces: [Space]) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
        self.spaces = spaces
    }
}

// MARK: View To Presenter Protocol
extension ListPresenter: ListViewOutput {
	func viewIsReady() {
        viewInput.setupInitialState()
    }
}

// MARK: Interactor To Presenter Protocol
extension ListPresenter: ListInteractorOutput {

}
