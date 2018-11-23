//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 50
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Start drawing
canvas.drawing { t in
    func randomTravel(with t : Tortoise) {
        
        for _ in 1...50 {
            
            // Turn a bit
            let turn = t.random(20) - 10
            t.left(turn)
            
            // Draw a random line length
            let distance = t.random(10)
            t.forward(distance)
            
        }
        
    }
    
    canvas.drawing { turtle in
        
        // Draw many squiggly lines
        for _ in 1...25 {
            
            // Turn a random amount
            let turn = turtle.random(60)
            turtle.left(turn)
            
            // Draw a squiggly line
            randomTravel(with: turtle)
            
            // Return to middle of canvas
            turtle.penUp()
            turtle.goto(0, 0)
            turtle.setHeading(0)
            turtle.penDown()
            
        }
        
        // Hide the turtle when done
        turtle.hideTortoise()
        
    }
    
}
