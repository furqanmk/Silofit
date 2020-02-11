//
//  SpaceCell.swift
//  Silofit
//
//  Created by Furqan Khan on 2/11/20.
//  Copyright © 2020 Silofit. All rights reserved.
//

import UIKit
import Kingfisher

final class SpaceCell: UITableViewCell {
    // MARK: Properties
    private var space: Space!
    
    // MARK: Setup
    func setup(with space: Space) {
        self.space = space
        self.setupView()
    }
    
    // MARK: View
    private lazy var spaceImageView: UIImageView = {
        let imageView = UIImageView()
        if let urlString = space.imageUrls.first, let url = URL(string: urlString) {
            imageView.kf.setImage(with: url)
        }
        return imageView
    }()
    
    private lazy var priceLabel: UILabel = {
        Label(withTextStyle: .caption2, text: "FROM $\(space.rate)/HOUR")
    }()
    
    private lazy var sizeLabel: UILabel = {
        Label(withTextStyle: .caption2, text: "\(space.squareFootage) SQ. FT.")
    }()
    
    private lazy var capacityLabel: UILabel = {
        Label(withTextStyle: .caption2, text: "UP TO \(space.maxCapacity) PEOPLE")
    }()
    
    private lazy var detailsStackView: UIStackView = {
        let separator = Label(withTextStyle: .body, text: "•")
        let stackView = UIStackView(arrangedSubviews: [priceLabel, separator, sizeLabel, separator, capacityLabel])
        stackView.axis = .horizontal
        stackView.alignment = .trailing
        return stackView
    }()
    
    private lazy var addressLabel: UILabel = {
        Label(withTextStyle: .headline, text: space.address)
    }()
    
    private lazy var distanceLabel: UILabel = {
        Label(withTextStyle: .subheadline, text: "4.85 KM AWAY")
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [spaceImageView, detailsStackView, addressLabel, distanceLabel])
        stackView.spacing = 8
        stackView.axis = .vertical
        return stackView
    }()
    
    private func setupView() {
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainStackView)
        let margins = readableContentGuide
        NSLayoutConstraint.activate([
            mainStackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: margins.topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor),
            spaceImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
