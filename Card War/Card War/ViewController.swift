//
//  ViewController.swift
//  Card War
//
//  Created by West Kraemer on 6/19/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var deckButton: UIButton!
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var deck = Deck()
    var cardsImageViews = [UIImageView]()
    
    var player1Score = 0 {
        didSet { UIView.transition(with: player1ScoreLabel, duration: 0.3, options: .transitionCurlUp, animations: {self.player1ScoreLabel.text = "\(self.player2Score)"}, completion: nil)}
    }
    
    var player2Score = 0 {
        didSet { UIView.transition(with: player2ScoreLabel, duration: 0.3, options: .transitionCurlUp, animations: {self.player2ScoreLabel.text = "\(self.player1Score)"}, completion: nil)}
    }
    
    var drawNumber = 0
    var cardLayoutDistance: CGFloat!
    var drawingCards = false
    var gameOver = false
    
    override func viewDidAppear(_ animated: Bool) {
        cardLayoutDistance = view.frame.width / 44
    }
    
    @IBAction func drawCards(_ sender: Any) {
        if drawingCards { return }
        if gameOver {
            restartGame()
            gameOver = false
            return
        }
        drawingCards = true
        drawNumber += 1
        let player1Card = deck.shuffledDeck.removeLast()
        let player2Card = deck.shuffledDeck.removeLast()
        
        let player1CardIV = UIImageView(image: UIImage(named: "Card-Back"))
    }
    
    @IBAction func restartButton(_ sender: Any) {
    }
    
    func restartGame() {
        
    }
}

