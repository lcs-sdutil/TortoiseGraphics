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
    
    // pensize smaller for far away mountains
    t.penSize(2)
    //find X and Y
    t.xcor
    t.ycor
    // move to left of canvas
    t.penUp()
    t.setH(270)
    t.fd(574)
    //turn right
    t.rt(90)
    // up
    t.fd(240)
    //pendown
    t.penDown()
    t.setH(45)
    t.fd(150)
    //backdown
    t.right(110)
    t.fd(70)
    t.lt(80)
    t.fd(15)
    t.right(80)
    t.fd(90)
    // next mountain
    

    
    
    
}
