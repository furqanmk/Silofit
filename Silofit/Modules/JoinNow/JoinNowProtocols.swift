// MARK: Presenter To View Interface
protocol JoinNowViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol JoinNowViewOutput: class {
    func viewIsReady()
    func didAuthenticate()
}

// MARK: Presenter To Interactor Interface
protocol JoinNowInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol JoinNowInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol JoinNowRouterInput: class {
    func authenticatedSuccessfully()
}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol JoinNowModuleOutput: class {

}
*/
