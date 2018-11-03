public extension Tortoise {

    func s() {
        //start at the top of S
        self.penUp()
        self.forward(60)
        self.left(90)
        self.forward(50)
        self.penDown()

        //start going down for the top part of the S
        self.setH(-75)
        self.curve(withSides: -40, withSize: 7, drawSides: 21)

        // start going down
        self.curve(withSides: 40, withSize: 8, drawSides: 23)

        // go back up
        self.curve(withSides: 25, withSize: 6, drawSides: 9)
        self.curve(withSides: -68, withSize: 14, drawSides: 14)
        self.penUp()
        self.backward(193)
        self.penDown()
    }

    func d() {
        // write the D
        //Stat by moving to the top of the D
        self.penUp()
        self.forward(193)
        self.penDown()

        // Go strait down
        self.backward(193)

        // Go up and curve down
        self.forward(155)
        self.curve(withSides: 25, withSize: 5, drawSides: 8)
        self.curve(withSides: 52, withSize: 11, drawSides: 22)

        // move to the next letter
        self.penUp()
        self.setH(90)
        self.forward(90)
        self.right(90)
        self.forward(1)
        self.penDown()
    }

    func u() {
        // move back to the beginning of the other letter
        // move to the next letter
        self.penUp()
        self.setH(270)
        self.forward(90)
        self.penDown()

        //go up for the u
        self.setH(90)
        self.curve(withSides: -40, withSize: 14, drawSides: 11)

        // curve down
        self.setH(180)
        self.penDown()
        self.forward(50)
        self.curve(withSides: -23, withSize: 11, drawSides: 12)

        // go back up
        self.penDown()
        self.setH(0)
        self.forward(55)

        // go down to the next letter
        self.setH(180)
        self.forward(46)
        self.curve(withSides: -25, withSize: 11, drawSides: 7)
        self.setH(90)
    }

    func t() {
        // curve up
        self.setH(20)
        self.curve(withSides: -80, withSize: 20, drawSides: 10)

        // curve left
        self.curve(withSides: -20, withSize: 10, drawSides: 14)
        self.penDown()
        self.forward(130)

        // go to the next letter
        self.penUp()
        self.setH(180)
        self.forward(170)
        self.right(90)
        self.forward(95)
        self.setH(90)
        self.penDown()
    }

    func i() {
        // start going up
        self.setH(90)
        self.curve(withSides: -45, withSize: 10, drawSides: 14)
        self.curve(withSides: -10, withSize: 4, drawSides: 4)

        // go down
        self.curve(withSides: -47, withSize: 10, drawSides: 14)

        // go form the top of the i
        self.penUp()
        self.setH(0)
        self.forward(110)
        self.left(90)
        self.forward(70)
        self.setH(90)
        self.penDown()

        // make a cycle
        self.curve(withSides: -10, withSize: 10, drawSides: 10)

        // come back to bettom right for next letter
        self.penUp()
        self.setH(180)
        self.forward(110)
        self.left(90)
        self.forward(70)
        self.setH(90)
        self.penDown()
    }

    func l() {
        //go up
        self.setH(55)
        self.curve(withSides: -70, withSize: 14, drawSides: 15)

        // turn around
        self.curve(withSides: -10, withSize: 2, drawSides: 4)

        // go down
        self.curve(withSides: -70, withSize: 14, drawSides: 16)
        self.setH(90)
    }

    func signature() {
        self.s()
        self.d()
        self.u()
        self.t()
        self.i()
        self.l()

    }

}
