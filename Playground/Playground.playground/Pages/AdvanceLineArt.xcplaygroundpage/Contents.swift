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
    t.penSize(3)
    t.setH(270)
    t.fd(510)
    t.rt(90)
    t.fd(90)
    t.setH(90)
    t.curve(withSides: -80, withSize: 20, drawSides: 6)
    t.setH(180)
    t.fd(80)

}
