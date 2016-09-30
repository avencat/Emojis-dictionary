//
//  DefinitionViewController.swift
//  Emojis dictionary
//
//  Created by Axel Vencatareddy on 30/09/2016.
//  Copyright © 2016 Axel Vencatareddy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
  var emoji = "💒"
  let emojiDictionary = ["🐹": "This is a cute hamster !", "😀": "Just a smiley face", "😎": "This is a thug face", "🤑": "This is a man who loves money", "💒": "This is a lovely church"]

  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var labelDescription: UILabel!

  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
      
      emojiLabel.text = emoji
      labelDescription.text = emojiDictionary[emoji]
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

}
