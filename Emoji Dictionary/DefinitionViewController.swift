//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sofie Nielsen on 27/10/16.
//  Copyright © 2016 Sofie Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "No emoji"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   emojiLabel.text = emoji
   
        if emoji == "🙅🏼" {definitionLabel.text = "Mariann er en sej ninja"}
        
        if emoji == "🎅🏽" {definitionLabel.text = "Mogens er en sort julemand"}
        
        if emoji == "🍪" {definitionLabel.text = "Sofie er en choko cookie"}
        
        if emoji == "🍉" {definitionLabel.text = "Kirstine er en saftig vandmelon"}
        
        if emoji == "🐶" {definitionLabel.text = "Fauna er en lille nuttet hund"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
