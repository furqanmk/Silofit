final class MapPresenter {
    // MARK: Properties
    weak var viewInput: MapViewInput!
    let interactorInput: MapInteractorInput
    let routerInput: MapRouterInput
    let spaces: [Space]

    // MARK: Initalizers
    init(with interactorInput: MapInteractorInput,
    	 routerInput: MapRouterInput,
         spaces: [Space]) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
        self.spaces = spaces
    }
}

// MARK: View To Presenter Protocol
extension MapPresenter: MapViewOutput {
	func viewIsReady() {
        viewInput.setupInitialState()
    }
}

// MARK: Interactor To Presenter Protocol
extension MapPresenter: MapInteractorOutput {

}
