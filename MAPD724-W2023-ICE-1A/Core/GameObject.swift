import GameplayKit
import SpriteKit

class GameObject : SKSpriteNode, GameProtocol
{
    
    //instance members
    var horizonalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    //initializer
    init(imageString: String, initialScale: CGFloat)
    {
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        //configuration
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //GameProtocol Functions
    func Start()
    {
        <#code#>
    }
    
    func Update()
    {
        <#code#>
    }
    
    func CheckBounds()
    {
        <#code#>
    }
    
    func Reset()
    {
        <#code#>
    }
}
