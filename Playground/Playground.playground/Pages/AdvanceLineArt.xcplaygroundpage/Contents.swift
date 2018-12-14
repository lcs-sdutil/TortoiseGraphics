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
    t.penSize(1)
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
    t.fd(120)
    //backdown
    t.right(110)
    t.fd(40)
    t.lt(80)
    t.fd(15)
    t.right(80)
    t.fd(90)
    // mountain no 2
    t.setH(30)
    t.fd(160)
    t.rt(123)
    t.fd(160)
    // mountain no 3
    t.setH(40)
    t.fd(160)
    t.curve(withSides: 60, withSize: 4, drawSides: 17)
    t.penDown()
    t.fd(160)
    t.xcor
    t.ycor
    // go back to draw line on mountain
    t.penUp()
    t.bk(120)
    t.penDown()
    t.setH(240)
    
    //loop
    for _ in 1...9{
    t.fd(7)
    t.right(60)
    t.fd(7)
    t.left(60)
    
    }
    t.xcor
    t.ycor
    
    //Go back to the end of mountain no 3
    t.penUp()
    t.setH(90)
    t.fd(183)
    //turn right
    t.rt(90)
    // down
    t.fd(96)
    //pendown
    t.penDown()
    //draw mountain no 4
    t.setH(40)
    t.fd(100)
    t.rt(80)
    t.fd(15)
    t.lt(80)
    t.fd(86)
    
    
    
    
}
