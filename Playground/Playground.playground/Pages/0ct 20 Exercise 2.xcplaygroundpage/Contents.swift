//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 50
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    // Draw the axes
    for _ in 1...4{
    turtle.forward(250)
    turtle.backward(250)
    turtle.right(90)
   }
    
    // Go to top left corner
    turtle.penUp()
    turtle.goto(-250, 250)
    turtle.penDown()
    for _ in 1...10{
    // Make vertical lines
    turtle.right(180)
    turtle.forward(500)
    turtle.penUp()
    turtle.left(90)
    turtle.forward(50)
    turtle.left(90)
    turtle.penDown()
    turtle.forward(500)
    // Make horizontal lines
    }

}
