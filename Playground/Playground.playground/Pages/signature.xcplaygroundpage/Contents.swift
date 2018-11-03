import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in
    
    // Start drawing name from the top left corner of canvas
    t.penUp()
    t.goto(-350, 150)

    // Set pen width
    t.penSize(3)
    
    //hide turtle
    t.hideTortoise()
    
    t.setH(90)
    
    for _ in 1...2{
        
    //draw Snignature
    t.signature()
    t.penUp()
    t.goto(-350, 250)
    t.right(90)
    t.forward(2)
    }
        
}

