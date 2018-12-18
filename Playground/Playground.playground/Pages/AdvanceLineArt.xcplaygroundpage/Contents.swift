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
    t.mountain()
    //make sun
    t.lineexplosion(atX: 220, atY: 220, scaleFactor: 0.5)
    t.snowboarder()
   
    
}
