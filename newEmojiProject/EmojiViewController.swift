//
//  EmojiViewController.swift
//  newEmojiProject
//
//  Created by Alex Charalambous on 05/11/2017.
//  Copyright © 2017 Alex Charalambous. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var emojiPicture: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emojiID = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //emojisArray = ["😃", "😞", "😎", "😡"]
        
        emojiPicture.text = emojiID
        
        if emojiID == "😃"{
            emojiLabel.text = "The happy emoji"
        }
        else if emojiID == "😞"{
            emojiLabel.text = "The sad emoji"
        }
        else if emojiID == "😎"{
            emojiLabel.text = "The cool emoji"
        }
        else {
            emojiLabel.text = "The angry emoji"
        }
        
        
        print(emojiID)
        
    }

   
}

