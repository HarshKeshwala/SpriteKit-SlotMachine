//
//  SpinButton.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class SpinButton : GameObject {
    
    init() {
        super.init(imageString: "spin", initialScale: 1.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

