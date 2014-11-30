//
//  InterfaceController.swift
//  Emoji Dictionary WatchKit Extension
//
//  Created by Produccion on 29/11/14.
//  Copyright (c) 2014 Ramiro Bedoya. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var emojis = ["😚😚","❤️❤️","🐶🐶","🐱🐱"]
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        self.table.setNumberOfRows(self.emojis.count, withRowType: "EmojiRow")
        
        for index in 0..<self.emojis.count {
            var theRow = self.table.rowControllerAtIndex(index) as EmojiRow
            theRow.emojiRowLabel.setText(self.emojis[index])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("ZoomEmojiController", context: self.emojis[rowIndex])
    }


}
