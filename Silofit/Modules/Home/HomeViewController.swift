import UIKit

final class HomeViewController: UIViewController {
    // MARK: Properties
    let viewOutput: HomeViewOutput

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
}

// MARK: Presenter To View Protocol
extension HomeViewController: HomeViewInput {
    func setupInitialState() {

    }
}
