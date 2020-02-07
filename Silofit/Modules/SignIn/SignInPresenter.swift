final class SignInPresenter {
    // MARK: Properties
    weak var viewInput: SignInViewInput!
    let interactorInput: SignInInteractorInput
    let routerInput: SignInRouterInput

    // MARK: Initalizers
    init(with interactorInput: SignInInteractorInput,
    	 routerInput: SignInRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension SignInPresenter: SignInViewOutput {
	func viewIsReady() {
        viewInput.setupInitialState()
    }
}

// MARK: Interactor To Presenter Protocol
extension SignInPresenter: SignInInteractorOutput {

}
