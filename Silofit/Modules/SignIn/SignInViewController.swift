import UIKit

final class SignInViewController: UIViewController {
    // MARK: Properties
    let viewOutput: SignInViewOutput

    // MARK: Initalizers
    init(viewOutput: SignInViewOutput) {
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
    }
}

// MARK: Presenter To View Protocol
extension SignInViewController: SignInViewInput {
    func setupInitialState() {
        setupView()
    }
}
