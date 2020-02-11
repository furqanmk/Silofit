import UIKit

final class HomeViewController: UIViewController {
    // MARK: Properties
    let viewOutput: HomeViewOutput
    
    private lazy var toggleBarButtonItem: UIBarButtonItem = {
        UIBarButtonItem(title: viewOutput.toggleTitle,
                        style: .plain,
                        target: self,
                        action: #selector(didTapToggle))
    }()
    
    private lazy var logoutBarButtonItem: UIBarButtonItem = {
        UIBarButtonItem(title: "Logout",
                        style: .plain,
                        target: self,
                        action: #selector(didTapLogout))
    }()
    
    private lazy var mapViewController: UIViewController = {
        MapBuilder.build(with: viewOutput.spaces)
    }()
    
    private lazy var listViewController: UIViewController = {
        ListBuilder.build(with: viewOutput.spaces)
    }()

    // MARK: Initalizers
    init(viewOutput: HomeViewOutput) {
    	self.viewOutput = viewOutput
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.viewIsReady()
    }
    
    private func setupView() {
        view.backgroundColor = Theme.light
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationItem.rightBarButtonItem = toggleBarButtonItem
        navigationItem.leftBarButtonItem = logoutBarButtonItem
    }

    private func updateToggle() {
        toggleBarButtonItem.title = viewOutput.toggleTitle
    }
    
    @objc private func didTapToggle(_ barButton: UIBarButtonItem) {
        viewOutput.didToggle()
    }
    
    @objc private func didTapLogout(_ barButton: UIBarButtonItem) {
        viewOutput.didLogout()
    }
    
    private func showMap() {
        view.addSubview(mapViewController.view)
        addChild(mapViewController)
    }
    
    private func showList() {
        view.addSubview(listViewController.view)
        addChild(listViewController)
    }
}

// MARK: Presenter To View Protocol
extension HomeViewController: HomeViewInput {
    func update(with spaces: [Space]) {
        showMap()
    }
    
    func setupInitialState() {
        setupView()
    }
    
    func viewStyleUpdated(with style: ViewStyle) {
        updateToggle()
        children.forEach { viewController in
            viewController.removeFromParent()
        }
        view.subviews.forEach { view in
            view.removeFromSuperview()
        }
        switch style {
        case .map:
            showMap()
        case .list:
            showList()
        }
    }
}
