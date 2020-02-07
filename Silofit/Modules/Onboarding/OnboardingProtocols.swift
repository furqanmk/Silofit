// MARK: Presenter To View Interface
protocol OnboardingViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol OnboardingViewOutput: class {
    func viewIsReady()
    func didClickSignIn()
    func didClickJoinNow()
}

// MARK: Presenter To Interactor Interface
protocol OnboardingInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol OnboardingInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol OnboardingRouterInput: class {
    func openSignIn()
    func openJoinNow()
}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol OnboardingModuleOutput: class {

}
*/
