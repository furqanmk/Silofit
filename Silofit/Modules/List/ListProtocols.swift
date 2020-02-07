// MARK: Presenter To View Interface
protocol ListViewInput: class {
    func setupInitialState()
}

// MARK: View To Presenter Interface
protocol ListViewOutput: class {
    func viewIsReady()
}

// MARK: Presenter To Interactor Interface
protocol ListInteractorInput: class {

}

// MARK: Interactor To Presenter Interface
protocol ListInteractorOutput: class {

}

// MARK: Presenter To Router Interface
protocol ListRouterInput: class {

}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol ListModuleOutput: class {

}
*/
