//
//  GameScene.swift
//  SuperSpaceMan
//
//  Created by xuedong on 06/03/2018.
//  Copyright © 2018 xuedong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var backgroundNode = SKSpriteNode(imageNamed: "Background")
    let playerNode = SKSpriteNode(imageNamed: "Player")
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        physicsWorld.gravity = CGVector(dx: 0.0, dy: -2.0)
        backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        // user interaction
        isUserInteractionEnabled = true
        
        // adding the background
        backgroundNode.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        backgroundNode.position = CGPoint(x: size.width / 2.0, y: 0.0)
        addChild(backgroundNode)
        
        // adding the player
        playerNode.position = CGPoint(x: size.width / 2.0, y: 80.0)
        playerNode.physicsBody?.linearDamping = 1.0
        playerNode.physicsBody =
            SKPhysicsBody(circleOfRadius: playerNode.size.width / 2.0)
        playerNode.physicsBody?.isDynamic = true
        addChild(playerNode)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        playerNode.physicsBody?.applyImpulse(CGVector(dx: 0.0, dy: 40.0))
    }
}
