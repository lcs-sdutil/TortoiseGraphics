//: # With a tortoise 🐢

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 200
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in

    turtle.fillColor(.orange)
    // Draw a square
    
    turtle.penColor(.black)
    turtle.beginFill()
    
    for _ in 1...36{
    
        for _ in 1...4{
    turtle.forward(150)
    turtle.right(90)
    }
 
    turtle.right(10)
}
    turtle.endFill()
}
