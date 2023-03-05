//
//  PlayerLandscape.swift
//  MAPD724-W2023-MidTerm-301297804
//
//  Created by Esha on 2023-03-02.
//

import GameplayKit
import SpriteKit

class PlayerLandscape : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "planeRight", initialScale: 1.7)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on bottom boundary
        if(position.y <= -300)
        {
            position.y = -300
        }
        
        // constrain the player on top boundary
        if(position.y >= 300)
        {
            position.y = 300
        }
    }
    
    override func Reset()
    {
        position.x = -600
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
