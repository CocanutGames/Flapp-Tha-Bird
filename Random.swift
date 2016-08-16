//
//  Random.swift
//  Flappy Bird
//
//  Created by Fahir Mehovic on 3/10/16.
//  Copyright © 2016 Awesome Tuts. All rights reserved.
//

import Foundation
import CoreGraphics

public extension CGFloat {
    
    public static func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
        
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + firstNum;
        
    }
    
}
































