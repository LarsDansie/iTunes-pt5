//
//  StoreItemCollectionViewSectionHeader.swift
//  iTunesSearch
//
//  Created by Lars Dansie on 1/11/24.
//

import Foundation
import UIKit

class StoreItemCollectionViewSectionHeader: UICollectionReusableView { static let reuseIdentifier = "StoreItemCollectionViewSectionHeader"
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = UIFont.boldSystemFont(ofSize: 17)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setTitle(_ title: String) {
        titleLabel.text = title
    }
    
    func setupView() {
        backgroundColor = .systemGray5
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15)
        ])
    }
}
