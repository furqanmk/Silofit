// MARK: Presenter To View Interface
protocol HomeViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol HomeViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol HomeInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol HomeInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol HomeRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol HomeModuleOutput: class {

}
*/
