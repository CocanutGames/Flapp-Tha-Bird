//
//  GameManager.swift
//  Flappy Bird
//
//  Created by Fahir Mehovic on 3/10/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import Foundation

class GameManager {
    
    static let instance = GameManager();
    private init() {}
    
    var birdIndex = Int(0);
    var birds = ["Blue", "Green", "Red"];
    
    func incrementIndex() {
        birdIndex++;
        if birdIndex == birds.count {
            birdIndex = 0;
        }
    }
    
    func getBird() -> String {
        return birds[birdIndex];
    }
    
    func setHighscore(highscore: Int) {
        NSUserDefaults.standardUserDefaults().setInteger(highscore, forKey: "Highscore");
    }
    
    func getHighscore() -> Int {
        return NSUserDefaults.standardUserDefaults().integerForKey("Highscore");
    }
    
}






































