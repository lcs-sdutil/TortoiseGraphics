//#-hidden-code
import UIKit
import PlaygroundSupport
TortoisePlayground.main.liveView.frame = CGRect(x: 0, y: 0, width: 512, height: 768)
PlaygroundPage.current.liveView = TortoisePlayground.main.liveView
//#-code-completion(identifier, hide, view)
//#-code-completion(module, hide, UIKit, PlaygroundSupport)
//#-end-hidden-code
//: Hello, TortoiseGraphics! 🐢
start(withTimeInterval: /*#-editable-code*/0.1/*#-end-editable-code*/)

//#-editable-code
setPenColor(random(max: 18) + 1)
right(234)
var i: Number = 1
for i in 1...100 {
    forward(Number(i * 5) * 0.9)
    right(144.3)
}
home()

//#-end-editable-code

finish()