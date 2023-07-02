//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic
//
//  Created by Ece Havanci on 30.06.2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stooop!", tintColor: UIColor.white)
    //let resetButton = CWButton(backgroundColor: .systemGreen, title: "Reset")
    //let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
    }

    func configureCardImageView(){
        view.addSubview(cardImageView) //drag the card onto the subview
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([cardImageView.widthAnchor.constraint(equalToConstant: 250),//give height
                                     cardImageView.heightAnchor.constraint(equalToConstant: 350),//give width
                                     cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),//we are centering the card into view of X Axis
                                     cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -75), //we are centering the card into view of Y Axis but -75 points upper
                            ])
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        NSLayoutConstraint.activate([
                   stopButton.widthAnchor.constraint(equalToConstant: 260),
                   stopButton.heightAnchor.constraint(equalToConstant: 50),
                   stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
       
        // cardImageView.translatesAutoresizingMaskIntoConstraints = false //dont have to write because we already have it in CWBUTTON
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
