import FBSDKLoginKit
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
    
    // MARK: View
    private lazy var headlineLabel: UILabel = {
        Label(withTextStyle: .headline, text: "Hey there, \nwelcome back")
    }()
    
    private lazy var signInButton: FBButton = {
        let loginButton = FBLoginButton(frame: .zero)
        loginButton.delegate = self
        return loginButton
    }()
    
    private func setupView() {
        view.backgroundColor = Theme.light
        view.addSubview(headlineLabel)
        view.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        let margins = view.readableContentGuide
        NSLayoutConstraint.activate([
            signInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            signInButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            headlineLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16),
            headlineLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        ])
    }
}

// MARK: Presenter To View Protocol
extension SignInViewController: SignInViewInput {
    func setupInitialState() {
        setupView()
    }
}

extension SignInViewController: LoginButtonDelegate {
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
