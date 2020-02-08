import UIKit

final class HomeCoordinator: Coordinator {
    private weak var navigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() -> UIViewController {
        HomeBuilder.build()
    }
}
