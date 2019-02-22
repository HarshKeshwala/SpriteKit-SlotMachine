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
     var quitbutton: QuitButton?
     var resetbutton: ResetButton?
    
    override func didMove(to view: SKView) {
        
        // adding background
        background = Background()
        background?.position = CGPoint(x: 380, y: -670)
        background?.size = self.frame.size
        background?.alpha = 0.5
        addChild(background!)
        
        // adding a spin button
        spinbutton = SpinButton()
        spinbutton?.name = "spin"
        spinbutton?.position = CGPoint(x: 380, y: -1160)
        spinbutton?.zPosition = 1
        addChild(spinbutton!)
        
        // adding a quit button
        quitbutton = QuitButton()
        quitbutton?.name = "quit"
        quitbutton?.position = CGPoint(x: 150, y: -1160)
        quitbutton?.zPosition = 1
        addChild(quitbutton!)
        
        // adding a reset button
        resetbutton = ResetButton()
        resetbutton?.name = "reset"
        resetbutton?.position = CGPoint(x: 610, y: -1160)
        resetbutton?.zPosition = 1
        addChild(resetbutton!)
    }
    
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "spin" {
                print("spin works!")
            }
            else if touchedNode.name == "quit"{
                quitGame()
            }
            else if touchedNode.name == "reset"{
                print("reset works!")
            }
        }
    }
    
    func quitGame()
    {
        exit(0)
    }
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
