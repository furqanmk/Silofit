import FBSDKLoginKit
import UIKit

final class JoinNowViewController: UIViewController {
    // MARK: Properties
    let viewOutput: JoinNowViewOutput

    // MARK: Initalizers
    init(viewOutput: JoinNowViewOutput) {
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
    
    // MARK: View
    private lazy var headlineLabel: UILabel = {
        Label(withTextStyle: .headline, text: "Welcome, \nsign up to get started")
    }()
    
    private lazy var joinNowButton: FBButton = {
        FBLoginButton(frame: .zero)
    }()
    
    private func setupView() {
        view.backgroundColor = Theme.light
        view.addSubview(headlineLabel)
        view.addSubview(joinNowButton)
        joinNowButton.translatesAutoresizingMaskIntoConstraints = false
        
        let margins = view.readableContentGuide
        NSLayoutConstraint.activate([
            joinNowButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            joinNowButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            joinNowButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            headlineLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16),
            headlineLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        ])
    }
}

// MARK: Presenter To View Protocol
extension JoinNowViewController: JoinNowViewInput {
    func setupInitialState() {
        setupView()
    }
}

extension JoinNowViewController: LoginButtonDelegate {
    func loginButton(_ loginButton: FBLoginButton,
                     didCompleteWith result: LoginManagerLoginResult?,
                     error: Error?) {
        if result?.token != nil {
            viewOutput.didAuthenticate()
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        // 
    }
}
