//
//  OceanLandscape.swift
//  MAPD724-W2023-MidTerm-301297804
//
// Created by Esha on 2023-03-02.
//

import GameplayKit
import SpriteKit

class OceanLandscape : GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "oceanLandscape", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -2253)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 2253
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
