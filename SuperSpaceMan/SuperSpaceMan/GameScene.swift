//
//  GameScene.swift
//  SuperSpaceMan
//
//  Created by xuedong on 06/03/2018.
//  Copyright © 2018 xuedong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    }
}
