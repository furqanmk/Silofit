import UIKit

class Button: UIButton {
    enum Style {
        case solid
        case border
        
        var textColor: UIColor {
            switch self {
            case .solid:
                return Theme.light
            case .border:
                return Theme.primary
            }
        }
        
        var backgroundColor: UIColor {
            switch self {
            case .solid:
                return Theme.primary
            case .border:
                return Theme.light
            }
        }
    }
    
    private let cornerRadius: CGFloat = 20
    private let borderWidth: CGFloat = 2
    
    init(text: String, style: Style, selector: Selector) {
        super.init(frame: .zero)
        
        setupStyle(with: style, text: text)
        setupConstraints()
        setupSelector(with: selector)
    }
    
    private func setupStyle(with style: Style, text: String) {
        self.backgroundColor = style.backgroundColor
        self.setTitleColor(style.textColor, for: .normal)
        self.setTitle(text, for: .normal)
        self.titleLabel?.font = .preferredFont(forTextStyle: .body)
        self.layer.cornerRadius = cornerRadius
        
        if style == .border {
            self.layer.borderWidth = borderWidth
            self.layer.borderColor = Theme.primary.cgColor
        }
    }
    
    private func setupConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    private func setupSelector(with selector: Selector) {
        addTarget(nil, action: selector, for: .touchUpInside)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
