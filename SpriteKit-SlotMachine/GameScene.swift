//
//  GameScene.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //initializers
     var background: Background?
     var spinbutton: SpinButton?
    
    override func didMove(to view: SKView) {
        
        // adding background
        background = Background()
        background?.position = CGPoint(x: 380, y: -670)
        background?.size = self.frame.size
        addChild(background!)
        
        // adding a spin button
        spinbutton = SpinButton()
        spinbutton?.name = "spin"
        spinbutton?.position = CGPoint(x: 380, y: -1160)
        spinbutton?.zPosition = 1
        addChild(spinbutton!)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "spin" {
                print("hey")
            }
        }
    }
    
  
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
