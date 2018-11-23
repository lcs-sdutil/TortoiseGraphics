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
    t.penUp()
    t.forward(100)
    t.penUp()
    
    for _ in 1...3{
        
        for _ in 1...36 {
            t.penUp()
            t.forward(5)
            t.right(5)
            t.penDown()
            t.forward(7)
            t.right(5)
            
        }
        
        t.left(90)
    }
    // goto the bottom of circle right
    t.penUp()
    t.setH(180)
    t.fd(67)
    t.left(90)
    t.fd(69)
    t.penDown()
    
    //form a triangle
    t.setH(200)
    t.fd(200)
    t.setH(338)
    t.fd(200)
    t.ht()
}


