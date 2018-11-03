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
    
    // Draw a square
    for _ in 1...4{
        turtle.forward(250)
        turtle.backward(250)
        turtle.right(90)
    }
    
}
