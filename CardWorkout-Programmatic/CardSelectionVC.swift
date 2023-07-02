//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic
//
//  Created by Ece Havanci on 30.06.2023.
//

import UIKit

class CardSelectionVC: UIViewController {
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stooop!")
    let resetButton = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
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
    
    func configureResetButton(){
        view.addSubview(resetButton)
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
    }
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
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
