// MARK: Presenter To View Interface
protocol SignInViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol SignInViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol SignInInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol SignInInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol SignInRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol SignInModuleOutput: class {

}
*/
