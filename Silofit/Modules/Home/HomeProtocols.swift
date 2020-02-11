// MARK: Presenter To View Interface
protocol HomeViewInput: class {
    func setupInitialState()
    func viewStyleUpdated(with style: ViewStyle)
}

// MARK: View To Presenter Interface
protocol HomeViewOutput: class {
    var spaces: [Space] { get }
    var toggleTitle: String { get }
    func viewIsReady()
    func didToggle()
    func didLogout()
}

// MARK: Presenter To Interactor Interface
protocol HomeInteractorInput: class {
    func fetchSpaces()
}

// MARK: Interactor To Presenter Interface
protocol HomeInteractorOutput: class {
    func didFetchSpaces(_ spaces: [String: Space])
}

// MARK: Presenter To Router Interface
protocol HomeRouterInput: class {
    func logout()
}

/*
 *
 	To be uncommented if this module needs to pass data back to the calling module.
 	The implementaion of this protocol should happen in the presenter of the calling module.
 *
protocol HomeModuleOutput: class {

}
*/
