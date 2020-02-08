final class JoinNowPresenter {
    // MARK: Properties
    weak var viewInput: JoinNowViewInput!
    let interactorInput: JoinNowInteractorInput
    let routerInput: JoinNowRouterInput

    // MARK: Initalizers
    init(with interactorInput: JoinNowInteractorInput,
    	 routerInput: JoinNowRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension JoinNowPresenter: JoinNowViewOutput {
	func viewIsReady() {
        viewInput.setupInitialState()
    }
    
    func didAuthenticate() {
        routerInput.authenticatedSuccessfully()
    }
}

// MARK: Interactor To Presenter Protocol
extension JoinNowPresenter: JoinNowInteractorOutput {

}
