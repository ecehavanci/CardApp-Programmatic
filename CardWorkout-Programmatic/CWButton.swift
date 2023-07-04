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
        //configure()
    }
    init(color: UIColor, title:String, systemImageName: String){
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.title = title
        configuration?.cornerStyle = .medium
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePlacement = .trailing
        configuration?.imagePadding = 8
        
        translatesAutoresizingMaskIntoConstraints = false
        
        //old code
        /*
        self.backgroundColor = backgroundColor
        //self.tintColor = tintColor ?? UIColor.white
        setTitle(title, for: .normal)
        configure()*/
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*func configure(){
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 17, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }*/
}
