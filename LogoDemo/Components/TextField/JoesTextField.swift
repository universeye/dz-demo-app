//
//  JoesTextField.swift
//  LogoDemo
//
//  Created by Terry Kuo on 2021/11/10.
//

import UIKit

class JoesTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(placeholder: String) {
        self.init(frame: .zero)
        self.placeholder = placeholder
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = self.frame.size.width / 2
        //layer.borderWidth = 1
        //layer.borderColor = UIColor.systemGray.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .justified
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 16
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .done
        clearButtonMode = .always
        
    }

}
