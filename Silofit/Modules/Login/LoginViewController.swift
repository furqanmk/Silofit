import UIKit

final class LoginViewController: UIViewController {
    // MARK: Properties
    let viewOutput: LoginViewOutput

    // MARK: Initalizers
    init(viewOutput: LoginViewOutput) {
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
extension LoginViewController: LoginViewInput {
    func setupInitialState() {

    }
}
