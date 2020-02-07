import UIKit

final class DetailsViewController: UIViewController {
    // MARK: Properties
    let viewOutput: DetailsViewOutput

    // MARK: Initalizers
    init(viewOutput: DetailsViewOutput) {
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
extension DetailsViewController: DetailsViewInput {
    func setupInitialState() {

    }
}
