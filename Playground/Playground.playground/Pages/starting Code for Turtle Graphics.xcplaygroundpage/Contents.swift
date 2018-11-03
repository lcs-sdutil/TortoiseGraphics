//: # With a tortoise 🐢
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 300, height: 300)
let canvas = PlaygroundCanvas(frame:myFrame)
canvas.frameRate = 50
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Start drawing
canvas.drawing { turtle in

    
}
