import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        Reset()
        zPosition = 0
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.y <= -773)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.y = 773
    }
    func Move()
    {
        position.y -= verticalSpeed!
    }
}
