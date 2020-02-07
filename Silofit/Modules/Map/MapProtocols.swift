// MARK: Presenter To View Interface
protocol MapViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol MapViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol MapInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol MapInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol MapRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol MapModuleOutput: class {

}
*/
