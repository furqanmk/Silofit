import UIKit

final class OnboardingViewController: UIViewController {
    // MARK: Properties
    let viewOutput: OnboardingViewOutput
    private let stackSpacing: CGFloat = 16
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    // MARK: View
    private lazy var signInButton: UIButton = {
        Button(text: "Sign in", style: .solid, selector: #selector(onSignInClicked))
    }()

    private lazy var joinNowButton: UIButton = {
        Button(text: "Join now", style: .border, selector: #selector(onJoinNowClicked))
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [signInButton, joinNowButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = stackSpacing
        stackView.axis = .vertical
        return stackView
    }()
    
    private func setupView() {
        view.backgroundColor = Theme.light
        view.addSubview(stackView)
        let margins = view.readableContentGuide
        
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        ])
    }
    
    @objc private func onSignInClicked(_ button: UIButton) {
        viewOutput.didClickSignIn()
    }
    
    @objc private func onJoinNowClicked(_ button: UIButton) {
        viewOutput.didClickJoinNow()
    }
}

// MARK: Presenter To View Protocol
extension OnboardingViewController: OnboardingViewInput {
    func setupInitialState() {
        setupView()
    }
}
