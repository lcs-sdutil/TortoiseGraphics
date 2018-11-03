//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 100
canvas.color = .blue
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    turtle.fillColor(.black)
    // Draw a square
    
    turtle.penSize(2)
    turtle.penColor(.black)
    turtle.beginFill()
    
    for _ in 1...10{
   
       for _ in 1...8{
            turtle.forward(200)
            turtle.left(135)
        
        }
        
        turtle.right(70)
    }
    turtle.endFill()
    turtle.hideTortoise()
}
