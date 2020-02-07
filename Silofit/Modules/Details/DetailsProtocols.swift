// MARK: Presenter To View Interface
protocol DetailsViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol DetailsViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol DetailsInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol DetailsInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol DetailsRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol DetailsModuleOutput: class {

}
*/
