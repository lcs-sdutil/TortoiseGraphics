//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Start drawing
canvas.drawing { t in
   
    t.lineexplosion(atX: -150, atY: 150, scaleFactor: 0.3)
    t.hairball(atX: 0, atY: 150, scaleFactor: 0.2)
    
    t.dashedcircle(atX: 140, atY: 150,scaleFactor: 0.5)
}
