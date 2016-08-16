//
//  Bird.swift
//  Flappy Bird
//
//  Created by Fahir Mehovic on 3/9/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import SpriteKit

struct ColliderType {
    static let Bird: UInt32 = 1;
    static let Ground: UInt32 = 2;
    static let Pipes: UInt32 = 3;
    static let Score: UInt32 = 4;
}

class Bird: SKSpriteNode {
    
    var birdAnimation = [SKTexture]();
    var birdAnimationAction = SKAction();
    
    var diedTexture = SKTexture();

    func initalize() {
        
        // here we are going to create animations
        
        for i in 2..<4 {
            let name = "\(GameManager.instance.getBird()) \(i)"
            birdAnimation.append(SKTexture(imageNamed: name));
        }
        
        birdAnimationAction = SKAction.animateWithTextures(birdAnimation, timePerFrame: 0.08, resize: true, restore: true);
        
        diedTexture = SKTexture(imageNamed: "\(GameManager.instance.getBird()) 4");
        
        self.name = "Bird";
        self.zPosition = 3;
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.height / 2);
        self.physicsBody?.allowsRotation = false;
        self.physicsBody?.affectedByGravity = false;
        self.physicsBody?.categoryBitMask = ColliderType.Bird;
        self.physicsBody?.collisionBitMask = ColliderType.Ground | ColliderType.Pipes;
        self.physicsBody?.contactTestBitMask = ColliderType.Ground | ColliderType.Pipes | ColliderType.Score;
        
    }
    
    func flap() {
        self.physicsBody?.velocity = CGVector(dx: 0, dy: 0);
        self.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 120));
        self.runAction(birdAnimationAction);
    }
    
}









































