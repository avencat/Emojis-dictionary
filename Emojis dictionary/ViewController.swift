//
//  ViewController.swift
//  Emojis dictionary
//
//  Created by Axel Vencatareddy on 30/09/2016.
//  Copyright © 2016 Axel Vencatareddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var myFunnyTableView: UITableView!
  
  var emojis: [Emoji] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    myFunnyTableView.dataSource = self
    myFunnyTableView.delegate = self
    emojis = createEmojis()
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return emojis.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    
    cell.textLabel?.text = emojis[indexPath.row].stringEmoji
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    let emoji = emojis[indexPath.row]
    
    performSegue(withIdentifier: "moveSegue", sender: emoji)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let defVC = segue.destination as! DefinitionViewController
    
    defVC.emoji = sender as! Emoji
  }

  func createEmojis() -> [Emoji] {
    let emoji1 = Emoji()
    emoji1.stringEmoji = "😀"
    emoji1.category = "Smiley"
    emoji1.description = "Just a smiley face"
    emoji1.birthYear = "2010"
    
    let emoji2 = Emoji()
    emoji2.stringEmoji = "😎"
    emoji2.category = "Smiley"
    emoji2.description = "This is a thug face"
    emoji2.birthYear = "2010"
    
    let emoji3 = Emoji()
    emoji3.stringEmoji = "🤑"
    emoji3.category = "Smiley"
    emoji3.description = "Someone who loves money"
    emoji3.birthYear = "2010"
    
    let emoji4 = Emoji()
    emoji4.stringEmoji = "🐹"
    emoji4.category = "Animals"
    emoji4.description = "This is a cute hamster !"
    emoji4.birthYear = "2011"
    
    let emoji5 = Emoji()
    emoji5.stringEmoji = "💒"
    emoji5.category = "Monuments"
    emoji5.description = "This is a lovely church"
    emoji5.birthYear = "2013"
    
    return [emoji1, emoji2, emoji3, emoji4, emoji5]
  }
}

