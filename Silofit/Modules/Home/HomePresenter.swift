enum ViewStyle {
    case map
    case list
}

final class HomePresenter {
    // MARK: Properties
    weak var viewInput: HomeViewInput!
    let interactorInput: HomeInteractorInput
    let routerInput: HomeRouterInput
    private var viewStyle: ViewStyle

    // MARK: Initalizers
    init(with interactorInput: HomeInteractorInput,
    	 routerInput: HomeRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
        self.viewStyle = .map
    }
}

// MARK: View To Presenter Protocol
extension HomePresenter: HomeViewOutput {
    var toggleTitle: String {
        switch viewStyle {
        case .map:
            return "List"
        case .list:
            return "Map"
        }
    }
    
	func viewIsReady() {
        viewInput.setupInitialState()
    }
    
    func didToggle() {
        viewStyle = viewStyle == .map ? .list : .map
        viewInput.viewStyleUpdated(with: viewStyle)
    }
    
    func didLogout() {
        routerInput.logout()
    }
}

// MARK: Interactor To Presenter Protocol
extension HomePresenter: HomeInteractorOutput {

}
