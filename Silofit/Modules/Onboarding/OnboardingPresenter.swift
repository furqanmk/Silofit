final class OnboardingPresenter {
    // MARK: Properties
    weak var viewInput: OnboardingViewInput!
    let interactorInput: OnboardingInteractorInput
    let routerInput: OnboardingRouterInput

    // MARK: Initalizers
    init(with interactorInput: OnboardingInteractorInput,
    	 routerInput: OnboardingRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension OnboardingPresenter: OnboardingViewOutput {
	func viewIsReady() {
        viewInput.setupInitialState()
    }
    
    func didClickSignIn() {
        routerInput.openSignIn()
    }
    
    func didClickJoinNow() {
        routerInput.openJoinNow()
    }
    
}

// MARK: Interactor To Presenter Protocol
extension OnboardingPresenter: OnboardingInteractorOutput {

}
