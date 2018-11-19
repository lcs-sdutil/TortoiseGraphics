public extension Tortoise {

    func s(scaleFactor scale: Double = 1.0) {
        //start at the top of S
        self.penUp()
        self.forward(60 * scale)
        self.left(90)
        self.forward(50 * scale)
        self.penDown()

        //start going down for the top part of the S
        self.setH(-75)
        self.curve(withSides: -40, withSize: 7 * scale, drawSides: 21)

        // start going down
        self.curve(withSides: 40, withSize: 8 * scale, drawSides: 23)

        // go back up
        self.curve(withSides: 25, withSize: 6 * scale, drawSides: 9)
        self.curve(withSides: -68, withSize: 14 * scale, drawSides: 14)
        self.penUp()
        self.backward(193 * scale)
        self.penDown()
    }

    func d(scaleFactor scale: Double = 1.0) {
        // write the D
        //Stat by moving to the top of the D
        self.penUp()
        self.forward(193 * scale)
        self.penDown()

        // Go strait down
        self.backward(193 * scale)

        // Go up and curve down
        self.forward(155 * scale)
        self.curve(withSides: 25, withSize: 5 * scale, drawSides: 8)
        self.curve(withSides: 52, withSize: 11 * scale, drawSides: 22)

        // move to the next letter
        self.penUp()
        self.setH(90)
        self.forward(90 * scale)
        self.right(90)
        self.forward(1 * scale)
        self.penDown()
    }

    func u(scaleFactor scale: Double = 1.0) {
        // move back to the beginning of the other letter
        // move to the next letter
        self.penUp()
        self.setH(270)
        self.forward(90 * scale)
        self.penDown()

        //go up for the u
        self.setH(90)
        self.curve(withSides: -40, withSize: 14 * scale, drawSides: 11)

        // curve down
        self.setH(180)
        self.penDown()
        self.forward(50 * scale)
        self.curve(withSides: -23, withSize: 11 * scale, drawSides: 12)

        // go back up
        self.penDown()
        self.setH(0)
        self.forward(55 * scale)

        // go down to the next letter
        self.setH(180)
        self.forward(46 * scale)
        self.curve(withSides: -25, withSize: 11 * scale, drawSides: 7)
        self.setH(90)
    }

    func t(scaleFactor scale: Double = 1.0) {
        // curve up
        self.setH(20)
        self.curve(withSides: -80, withSize: 20 * scale, drawSides: 10)

        // curve left
        self.curve(withSides: -20, withSize: 10 * scale, drawSides: 14)
        self.penDown()
        self.forward(130 * scale)

        // go to the next letter
        self.penUp()
        self.setH(180)
        self.forward(170 * scale)
        self.right(90)
        self.forward(95 * scale)
        self.setH(90)
        self.penDown()
    }

    func i(scaleFactor scale: Double = 1.0) {
        // start going up
        self.setH(90)
        self.curve(withSides: -45, withSize: 10 * scale, drawSides: 14)
        self.curve(withSides: -10, withSize: 4 * scale, drawSides: 4)

        // go down
        self.curve(withSides: -47, withSize: 10 * scale, drawSides: 14)

        // go form the top of the i
        self.penUp()
        self.setH(0)
        self.forward(110 * scale)
        self.left(90)
        self.forward(70 * scale)
        self.setH(90)
        self.penDown()

        // make a cycle
        self.curve(withSides: -10, withSize: 10 * scale, drawSides: 10)

        // come back to bettom right for next letter
        self.penUp()
        self.setH(180)
        self.forward(110 * scale)
        self.left(90)
        self.forward(70 * scale)
        self.setH(90)
        self.penDown()
    }

    func l(scaleFactor scale: Double = 1.0) {
        //go up
        self.setH(55)
        self.curve(withSides: -70, withSize: 14 * scale, drawSides: 15)

        // turn around
        self.curve(withSides: -10, withSize: 2 * scale, drawSides: 4)

        // go down
        self.curve(withSides: -70, withSize: 14 * scale, drawSides: 16)
        self.setH(90)
    }

    func signature(scaleFactor scale: Double = 1.0) {

        self.s(scaleFactor: scale)
        self.d(scaleFactor: scale)
        self.u(scaleFactor: scale)
        self.t(scaleFactor: scale)
        self.i(scaleFactor: scale)
        self.l(scaleFactor: scale)

    }

}
