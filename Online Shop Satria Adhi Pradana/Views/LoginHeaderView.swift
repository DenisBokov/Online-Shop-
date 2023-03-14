//
//  LoginHeaderView.swift
//  Online Shop Satria Adhi Pradana
//
//  Created by Denis Bokov on 14.03.2023.
//

import UIKit

final class LoginHeaderView: UIView {
    
    private let titelLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.086, green: 0.094, blue: 0.149, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Montserrat-SemiBold", size: 19.47)
        return label
    }()
    
    init(titel: String) {
        super.init(frame: .zero)
        self.titelLabel.text = titel
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(titelLabel)
        
        titelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titelLabel.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 128.71),
            titelLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 90.05),
            titelLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -89.32),
            titelLabel.widthAnchor.constraint(equalToConstant: 195.63)
        ])
    }
}
