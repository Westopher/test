//
//  EomjiTableViewController.swift
//  emojiDict
//
//  Created by West Kraemer on 10/29/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class EomjiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.emojiDefinition) - \(emoji.emojiLabel)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
        
    }
    
    func createEmojis() -> [Emoji] {
        let Iceland = Emoji()
        Iceland.emojiDefinition = "🇦🇽"
        Iceland.birthLabel = 1
        Iceland.continent = "Europe"
        Iceland.emojiLabel = "Iceland"
        
        let USA = Emoji()
        USA.emojiDefinition = "🇺🇸"
        USA.birthLabel = 1776
        USA.continent = "North America"
        USA.emojiLabel = "United States of America"
        
        
        return [Iceland, USA]

    }

}
