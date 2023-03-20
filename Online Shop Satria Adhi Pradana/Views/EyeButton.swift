//
//  EyeButton.swift
//  Online Shop Satria Adhi Pradana
//
//  Created by Denis Bokov on 14.03.2023.
//

import UIKit

final class EyeButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupEyeButton()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupEyeButton() {
        setImage(UIImage(systemName: "eye.slash"), for: .normal)
        tintColor = UIColor(red: 0.482, green: 0.482, blue: 0.482, alpha: 1)
        widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
