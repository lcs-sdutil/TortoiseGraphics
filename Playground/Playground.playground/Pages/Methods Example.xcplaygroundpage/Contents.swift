import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 300, height: 300)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 50
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Start drawing
canvas.drawing { turtle in
    
    // Define thesquare method
    func square(withSize size: Double) {
        
        turtle.penDown()
        for _ in 1...4  {
            turtle.forward(size)
            turtle.right(90)
        }
        turtle.penUp()
        
    }
    
    // Invoke the square method
    // square(withSize: 50)
    // square(withSize: 30)
    // square(withSize: 15)
    
    // Use loop to draw 15 15 square quickly
    for mySize in 1...15 {
        
        square(withSize: Double(mySize * 10))
    }
    
    
    
}





