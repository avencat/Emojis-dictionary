//
//  DefinitionViewController.swift
//  Emojis dictionary
//
//  Created by Axel Vencatareddy on 30/09/2016.
//  Copyright © 2016 Axel Vencatareddy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
  var emoji = Emoji()

  @IBOutlet weak var emojiLabel: UILabel!
  @IBOutlet weak var labelDescription: UILabel!
  @IBOutlet weak var categoryLabel: UILabel!
  @IBOutlet weak var birthYearLabel: UILabel!

  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
      
      emojiLabel.text = emoji.stringEmoji
      labelDescription.text = emoji.description
      categoryLabel.text = "Category: \(emoji.category)"
      birthYearLabel.text = "BirthYear: \(emoji.birthYear)"
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }

}
