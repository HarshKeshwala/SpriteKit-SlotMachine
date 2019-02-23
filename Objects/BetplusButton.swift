//
//  BetplusButton.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-22.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class BetplusButton : GameObject {
    
    init() {
        super.init(imageString: "plus", initialScale: 0.15)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
