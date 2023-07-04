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
    let deck: [UIImage]  = Deck.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
        // Do any additional setup after loading the view.
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }

    @objc func showRandomCard(){
            cardImageView.image = deck.randomElement()
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
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
    }
    
    @objc func stopTimer(){
        timer.invalidate()
    }
    
    
    func configureResetButton(){
        view.addSubview(resetButton)
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
        
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
    }
    
    @objc func resetTimer(){
        timer.invalidate()
        startTimer()
    }
    
    func configureRulesButton(){
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside ) //add navigation basicly
        //always touchUpInside!
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
    }
    
    @objc func presentRulesVC(){
        let rulesPage = RulesVC()
        present(rulesPage, animated: true)
        
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
