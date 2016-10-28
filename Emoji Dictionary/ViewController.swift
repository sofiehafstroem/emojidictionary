	//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Sofie Nielsen on 27/10/16.
//  Copyright © 2016 Sofie Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TheCoolTableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TheCoolTableView.dataSource = self
        TheCoolTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1.stringEmoji = "🙅🏼"
        emoji1.definition = "Mariann er en sej ninja"
        emoji1.category = "Person"
        emoji1.birthyear = 1962
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "🎅🏽"
        emoji2.definition = "Mogens er en sort julemand"
        emoji2.category = "Person"
        emoji2.birthyear = 1960
        
        var emoji3 = Emoji()
        emoji3.stringEmoji = "🍪"
        emoji3.definition = "Sofie er en choko cookie"
        emoji3.category = "Mad"
        emoji3.birthyear = 1987
        
        var emoji4 = Emoji()
        emoji4.stringEmoji = "🍉"
        emoji4.definition = "Ophelia a en saftig vandmelon"
        emoji4.category = "Mad"
        emoji4.birthyear = 2013
        
        var emoji5 = Emoji()
        emoji5.stringEmoji = "🐶"
        emoji5.definition = "Fauna er en nuttet bulldog"
        emoji5.category = "Dyr"
        emoji5.birthyear = 2014
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }

}

