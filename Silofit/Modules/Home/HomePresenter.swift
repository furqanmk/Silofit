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
    private var spacesDictionary: [String: Space]

    // MARK: Initalizers
    init(with interactorInput: HomeInteractorInput,
    	 routerInput: HomeRouterInput) {
    	self.interactorInput = interactorInput
        self.routerInput = routerInput
        self.viewStyle = .map
        self.spacesDictionary = [:]
        self.interactorInput.fetchSpaces()
    }
}

// MARK: View To Presenter Protocol
extension HomePresenter: HomeViewOutput {
    var spaces: [Space] {
        spacesDictionary.map { $0.value }
    }
    
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
        guard !spaces.isEmpty else {
            return
        }
        viewStyle = viewStyle == .map ? .list : .map
        viewInput.viewStyleUpdated(with: viewStyle)
    }
    
    func didLogout() {
        routerInput.logout()
    }
}

// MARK: Interactor To Presenter Protocol
extension HomePresenter: HomeInteractorOutput {
    func didFetchSpaces(_ spaces: [String : Space]) {
        spacesDictionary = spaces
        viewInput.viewStyleUpdated(with: viewStyle)
    }
}
