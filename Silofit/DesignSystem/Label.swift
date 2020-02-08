import UIKit

final class Label: UILabel {
    init(withTextStyle textStyle: UIFont.TextStyle, text: String, numberOfLines: Int = 0) {
        super.init(frame: .zero)
        self.font = UIFont.preferredFont(forTextStyle: textStyle)
        self.numberOfLines = 0
        self.adjustsFontForContentSizeCategory = true
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
