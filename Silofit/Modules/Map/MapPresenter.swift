final class MapPresenter {
    // MARK: Properties
    weak var viewInput: MapViewInput!
    let interactorInput: MapInteractorInput
    let routerInput: MapRouterInput

    // MARK: Initalizers
    init(with interactorInput: MapInteractorInput,
    	 routerInput: MapRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
    }
}

// MARK: View To Presenter Protocol
extension MapPresenter: MapViewOutput {
	func viewIsReady() {

    }
}

// MARK: Interactor To Presenter Protocol
extension MapPresenter: MapInteractorOutput {

}
