final class LoginPresenter {
    // MARK: Properties
    weak var viewInput: LoginViewInput!
    let interactorInput: LoginInteractorInput
    let routerInput: LoginRouterInput

    // MARK: Initalizers
    init(with interactorInput: LoginInteractorInput,
    	 routerInput: LoginRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension LoginPresenter: LoginViewOutput {
	func viewIsReady() {

    }
}

// MARK: Interactor To Presenter Protocol
extension LoginPresenter: LoginInteractorOutput {

}
