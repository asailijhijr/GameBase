//
//  GameObject.swift
//  Blockus
//
//  Created by Garland Kevin C. on 3/15/18.
//  Copyright © 2018 Kevin C. Garland. All rights reserved.
//

import Foundation
import SpriteKit

enum ObjectShape {
    case rectangle
    case circle
    case other
}

class GameObject : SKSpriteNode {
    var level : Int;
    var shape : ObjectShape;
    
    init(givenShape : ObjectShape, givenPosition : CGPoint) {
        level = 1;
        shape = givenShape;
        //note, replace "placeholder" with a parameter.
        super.init(imageNamed: "placeholder");
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder);
    }
    
    func draw(){}
    func collide(){}
    func levelUp(amount : Int) {}
    func update() {}
}

