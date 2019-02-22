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
    
     var firstImage = SKSpriteNode()
     var secondImage = SKSpriteNode()
     var thirdImage = SKSpriteNode()
    
     var textures = [SKTexture]()
    
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
        
        
//        firstImage.position = CGPoint(x: 220, y: -600)
//        secondImage.position = CGPoint(x: 370, y: -600)
//        thirdImage.position = CGPoint(x: 620, y: -600)
        
        firstImage = (self.childNode(withName: "image1") as? SKSpriteNode)!
        secondImage = (self.childNode(withName: "image2") as? SKSpriteNode)!
        thirdImage = (self.childNode(withName: "image3") as? SKSpriteNode)!
        
//        addChild(firstImage)
//        addChild(secondImage)
//        addChild(thirdImage)
        
        textures.append(SKTexture(imageNamed: "Kiwi"))
        textures.append(SKTexture(imageNamed: "Lemon"))
        textures.append(SKTexture(imageNamed: "Mango"))
        textures.append(SKTexture(imageNamed: "Grape"))
//        let image = UIImage(named: "Grape")
//        let texture = SKTexture(image: image!)
//        firstImage = SKSpriteNode(texture: texture)
//        firstImage.position = CGPoint(x: 220, y: -600)
//        addChild(firstImage)
    }
    
  
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "spin" {
                
                let rand = Int(arc4random_uniform(UInt32(textures.count)))
                let rand2 = Int(arc4random_uniform(UInt32(textures.count)))
                let rand3 = Int(arc4random_uniform(UInt32(textures.count)))
               
                let texture = textures[rand] as SKTexture
                let texture2 = textures[rand2] as SKTexture
                let texture3 = textures[rand2] as SKTexture
                
                firstImage.texture = texture
                secondImage.texture = texture2
                thirdImage.texture = texture3
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

