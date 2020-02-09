import UIKit

final class HomeCoordinator: Coordinator {
    private weak var navigationController: UINavigationController?
    private let onLogout: () -> Void
    
    init(_ navigationController: UINavigationController?, onLogout: @escaping () -> Void) {
        self.navigationController = navigationController
        self.onLogout = onLogout
    }
    
    func start() -> UIViewController {
        setupNavigationBar()
        return HomeBuilder.build(onLogout: onLogout)
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.backgroundColor = Theme.light
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = Theme.primary
    }
}
