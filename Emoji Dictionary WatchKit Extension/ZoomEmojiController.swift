//
//  ZoomEmojiController.swift
//  Emoji Dictionary
//
//  Created by Produccion on 29/11/14.
//  Copyright (c) 2014 Ramiro Bedoya. All rights reserved.
//

import UIKit
import WatchKit

class ZoomEmojiController: WKInterfaceController {
    
    @IBOutlet weak var definitionLabel: WKInterfaceLabel!
    @IBOutlet weak var zoomEmojiLabel: WKInterfaceLabel!
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        var emoji = context as String
        
        var font = UIFont.systemFontOfSize(60)
        var specialString = NSAttributedString(string: emoji, attributes: [NSFontAttributeName:font])
        self.zoomEmojiLabel.setAttributedText(specialString)
        
        var definition = "Sin Definición"
        
        if emoji == "❤️❤️" {
            definition = "Love"
            
        }
        
        self.definitionLabel.setText(definition)
    }
  
}
