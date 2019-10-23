//
//  GameScene.swift
//  Mob22Day2
//
//  Created by Jonathan Kopp on 10/23/19.
//  Copyright © 2019 Jonathan Kopp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var myCoolSprite = SKSpriteNode()
    var timer = Timer()
    override func didMove(to view: SKView) {
        backgroundColor = .black
        let color = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        let size = CGSize(width: 100, height: 100)
        myCoolSprite = SKSpriteNode(color: color, size: size)
        myCoolSprite.position = view.center
        scene?.addChild(myCoolSprite)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: {_ in
            self.editColor()
        })
    }
    
    func editColor() {
        myCoolSprite.color = UIColor.init(red: CGFloat(CGFloat.random(in: 0...1)), green: CGFloat(CGFloat.random(in: 0...1)), blue: CGFloat(CGFloat.random(in: 0...1)), alpha: 1.0)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
