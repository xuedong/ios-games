//
//  GameViewController.swift
//  SuperSpaceMan
//
//  Created by xuedong on 06/03/2018.
//  Copyright © 2018 xuedong. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the main view
        let skView = view as! SKView
        skView.showsFPS = true
        
        // Create and configure the game scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        // Show the scene
        skView.presentScene(scene)
    }
}
