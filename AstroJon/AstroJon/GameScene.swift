//
//  GameScene.swift
//  AstroJon
//
//  Created by Jonathan Kopp on 10/23/19.
//  Copyright © 2019 Jonathan Kopp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var backGroundNode = SKSpriteNode()
    var spaceShipNode = SKSpriteNode()
    var metoriteNode = SKSpriteNode()
    var spaceDebris = SKSpriteNode()
    override func didMove(to view: SKView) {
        setup()
    }
    func setup() {
        //Setup background
        let texture = SKTexture(image: #imageLiteral(resourceName: "vectorstock_16606572"))
        backGroundNode = SKSpriteNode(texture: texture, size: view!.bounds.size)
        backGroundNode.position = view!.center
        scene?.addChild(backGroundNode)
        
        //Spaceship
        let spaceshiptexture = SKTexture(image: #imageLiteral(resourceName: "playerShip2_red"))
        let spaceshipSize = CGSize(width: 100, height: 100)
        spaceShipNode = SKSpriteNode(texture: spaceshiptexture, size: spaceshipSize)
        spaceShipNode.position = CGPoint(x: view!.bounds.width / 2, y: 70)
        scene?.addChild(spaceShipNode)
        
        //Meteorite
        let metoriteTexture = SKTexture(image: #imageLiteral(resourceName: "meteorGrey_big4"))
        let metoriteSize = CGSize(width: 100, height: 100)
        metoriteNode = SKSpriteNode(texture: metoriteTexture, size: metoriteSize)
        metoriteNode.position = CGPoint(x: Int.random(in: (50...Int(view!.bounds.width - 50))), y: Int.random(in: (50...Int(view!.bounds.height - 50))))
        scene?.addChild(metoriteNode)
        
        //Spaceship debris
        let spaceDebrisTexture = SKTexture(image: #imageLiteral(resourceName: "wingRed_2"))
        let spaceDebrisSize = CGSize(width: 50, height: 50)
        spaceDebris = SKSpriteNode(texture: spaceDebrisTexture, size: spaceDebrisSize)
        spaceDebris.position = CGPoint(x: Int.random(in: (25...Int(view!.bounds.width - 25))), y: Int.random(in: (25...Int(view!.bounds.height - 25))))
        scene?.addChild(spaceDebris)
    }
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for i in touches {
            let loc = i.location(in: self.view)
            //spaceShipNode.anchorPoint = CGPoint(x: loc.x, y: 70)
            spaceShipNode.position = CGPoint(x: loc.x, y: 70)
        }
    }
}
