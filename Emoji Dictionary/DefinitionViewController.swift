//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sofie Nielsen on 27/10/16.
//  Copyright © 2016 Sofie Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Kategori: \(emoji.category)"
        birthyearLabel.text = "Foesdelsaar: \(emoji.birthyear)"
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
