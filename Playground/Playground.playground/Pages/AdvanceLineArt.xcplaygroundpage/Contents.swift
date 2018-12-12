//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 700, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas


// Start drawing
canvas.drawing { t in

    t.hill()
    t.jump()
    t.rail()
    t.penSize(0.1)
    t.setPos(-250, 200)
    for _ in 1...10{
    
    t.lineexplosion(atX: -200 + 30, atY: 200 - 30, scaleFactor: 0.1)


    
    }
    
}
