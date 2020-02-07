import UIKit

final class OnboardingViewController: UIViewController {
    // MARK: Properties
    let viewOutput: OnboardingViewOutput

    // MARK: Initalizers
    init(viewOutput: OnboardingViewOutput) {
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
extension OnboardingViewController: OnboardingViewInput {
    func setupInitialState() {

    }
}
