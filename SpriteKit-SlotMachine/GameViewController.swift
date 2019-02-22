//
//  GameViewController.swift
//  SpriteKit-SlotMachine
//
//  Created by Harsh Keshwala on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    
    var images = [slotComp]()
    var counter = 0
    var comp1 = ""
    var comp2 = ""
    var comp3 = ""
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let img1  = slotComp(image: UIImage(named: "Kiwi"), color: "green")
        let img2 = slotComp(image: UIImage(named: "Mango"), color: "red")
        let img3 = slotComp(image: UIImage(named: "Grape"), color: "blue")
        
        images = [img1, img2, img3,img2, img2, img3,img1, img2, img3,img1,
                  img2, img1,img1, img2, img3,img3, img2, img3,img1, img1, img3,
                  img3, img2,img3, img1, img3,img3, img1, img2,img1, img1, img2,
                  img3, img2,img1, img3, img3,img2, img3, img1,img2, img3, img1,
                  img2, img1,img1, img2, img3,img1, img3, img3,img1, img2, img3,
                  img1,img1, img3, img1, img1, img3]
        

        srandom(UInt32(time(nil)))
        
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    struct slotComp{
        var image: UIImage!
        var color: String
    }
    
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
