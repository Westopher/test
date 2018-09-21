//
//  EmojiDefinitionViewController.swift
//  emojiDict
//
//  Created by West Kraemer on 10/30/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet var continent: UILabel!
    @IBOutlet var birthLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    @IBOutlet var emojiDefinition: UILabel!
    
    var emoji = Emoji()
    
    
    /*
     var emojis = ["🇦🇽", "🇦🇹", "🇧🇪", "🇨🇦", "🇨🇮", "🇩🇪", "🇿🇦", "🇺🇸", "🇪🇸", "🇬🇧", "🇲🇰", "🇯🇲", "🇫🇷", "🇮🇱", "🇬🇭", "🇩🇰", "🇨🇿", "🇭🇷"]
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.emojiDefinition
        continent.text = "Continent: \(emoji.continent)"
        birthLabel.text = "Birth Year: \(emoji.birthLabel)"
        emojiDefinition.text = "Country Name: \(emoji.emojiLabel)"

    }
    
}
