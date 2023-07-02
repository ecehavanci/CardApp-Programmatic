//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Ece Havanci on 30.06.2023.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    init(backgroundColor: UIColor, title:String, tintColor:UIColor?){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.tintColor = tintColor ?? UIColor.white
        setTitle(title, for: .normal)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        setTitleColor(.red, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
