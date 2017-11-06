//
//  HomeTableViewController.swift
//  newEmojiProject
//
//  Created by Alex Charalambous on 05/11/2017.
//  Copyright © 2017 Alex Charalambous. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    var emojisArray = ["😃", "😞", "😎", "😡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojisArray.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath)
        
        cell.textLabel?.text = emojisArray[indexPath.row]
        
        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedEmoji = emojisArray[indexPath.row]
        performSegue(withIdentifier: "segueHomeToEmoji", sender: selectedEmoji)
        
        
        
        /*
        if indexPath.row == 0 {
            performSegue(withIdentifier: "segueHomeToHappy", sender: nil)
        }
        
        else if indexPath.row == 1 {
            performSegue(withIdentifier: "segueHomeToSad", sender: nil)
        }
        
        else if indexPath.row == 2 {
            performSegue(withIdentifier: "segueHomeToCool", sender: nil)
        }
    
        else {
            performSegue(withIdentifier: "segueHomeToAngry", sender: nil)
        }
        */
    
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiConstant = segue.destination as! EmojiViewController
        emojiConstant.emojiID = sender as! String
    }
    
}
