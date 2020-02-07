import UIKit

final class ListViewController: UIViewController {
    // MARK: Properties
    let viewOutput: ListViewOutput

    // MARK: Initalizers
    init(viewOutput: ListViewOutput) {
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
extension ListViewController: ListViewInput {
    func setupInitialState() {

    }
}
