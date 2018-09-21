//
//  Data Model.swift
//  Card War
//
//  Created by West Kraemer on 6/24/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class Deck {
    
    var shuffledDeck = [Card]()
    
    private var deck: [Card] = {
        var cards = [Card]()
        var suits = ["♠️", "♣️", "♥️", "♦️"]
        var ranks = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
        
        for suit in suits {
            var value = 1
            for rank in ranks {
                cards.append(Card(suit: suit, rank: rank, value: value))
                value += 1
            }
        }
        return cards //the cards are the array of cards created above by using the card class
        }()
        
        init() { shuffle() }
        
        func shuffle() {
            var newDeck = deck
            var remainingCards: UInt32 = 52
            shuffledDeck.removeAll()
            repeat {
                let cardToPick = arc4random_uniform(remainingCards)
                shuffledDeck.append(newDeck.remove(at: Int(cardToPick)))
                remainingCards -= 1
                
            } while remainingCards > 0
            
        }
    
}

class Card {
    
    var image: UIImage
    var suit: String
    var rank: String
    var value: Int
    
    init(suit: String, rank: String, value: Int) {
        self.suit = suit
        self.rank = rank
        self.value = value
        image = UIImage(named: "\(suit)\(rank).png")!
    }
    
    
}







