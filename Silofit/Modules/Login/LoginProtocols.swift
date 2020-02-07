// MARK: Presenter To View Interface
protocol LoginViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol LoginViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol LoginInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol LoginInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol LoginRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol LoginModuleOutput: class {

}
*/
