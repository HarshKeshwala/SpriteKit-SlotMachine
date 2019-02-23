//
//  BetminusButton.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-22.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class BetminusButton : GameObject {
    
    init() {
        super.init(imageString: "minus", initialScale: 0.075)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
