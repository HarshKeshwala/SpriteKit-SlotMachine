//
//  GameObject.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameObject : SKSpriteNode {
    // common GameObject variables
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    
    
    // Initializers
    init(imageString: String, initialScale: CGFloat) {
        // initialize the GameObject with an image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        
        super.init(texture: texture, color: color, size: texture.size())
        setScale(initialScale)
        self.scale = initialScale
        
        self.width = texture.size().width * self.scale!
        self.height = texture.size().height * self.scale!
      
        self.halfWidth = self.width! * 0.5
        self.halfHeight = self.height! * 0.5
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // class Functions (methods)
    func Reset() {
        
    }
    
    func CheckBounds() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
}
