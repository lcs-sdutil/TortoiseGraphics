public extension Tortoise {

    func square(withSize size: Double) {

        self.penDown()
        for _ in 1...4 {
            self.forward(size)
            self.right(90)
        }
        self.penUp()
    }

    func arrows() {

        self.forward(100)
        self.left(90)

        self.forward(40)
        self.right(125)

        self.forward(100)
        self.right(110)

        self.forward(100)
        self.right(125)

        self.forward(40)
        self.left(90)

        self.forward(100)
        self.right(90)

        self.forward(34.8)
        self.right(90)

    }

    func curve(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {

        self.penDown()
        for _ in 1...sideLimit {
            self.forward(size)
            print(self.xcor)
            print(self.ycor)
            self.right(360 / Double(sideCount))

        }
        self.penUp()
    }

    func icecream() {
        self.penUp()
        self.forward(100)
        self.penUp()

        for _ in 1...3 {

            for _ in 1...36 {
                self.penUp()
                self.forward(5)
                self.right(5)
                self.penDown()
                self.forward(7)
                self.right(5)

            }

            self.left(90)
        }
        // goto the bottom of circle right
        self.penUp()
        self.setH(180)
        self.fd(67)
        self.left(90)
        self.fd(69)
        self.penDown()

        //form a triangle
        self.setH(200)
        self.fd(200)
        self.setH(338)
        self.fd(200)
        self.ht()
    }

    func randomTravel(scaleFactor scale: Double = 1.0) {

        for _ in 1...50 {

            // Turn a bit
            let turn = self.random(20) - 10
            self.left(turn)

            // Draw a random line length
            let distance = self.random(10)
            self.forward(distance * scale)

        }

    }

    func hairball(atX: Double, atY: Double, scaleFactor scale: Double = 1.0) {

        self.penUp()
        self.goto(atX, atY)
        self.penDown()
        // Draw many squiggly lines
        for _ in 1...25 {

            // Turn a random amount
            let turn = self.random(360)
            self.left(turn)

            // Draw a squiggly line
            randomTravel(scaleFactor: 0.3)

            // Return to middle of canvas
            self.penUp()
            self.goto(atX, atY)
            self.setHeading(0)
            self.penDown()

        }

        // Hide the turtle when done
        self.hideTortoise()

    }

    func lineexplosion(atX: Double, atY: Double, scaleFactor scale: Double = 1.0 ) {

        self.penUp()
        self.goto(atX, atY)
        self.penDown()
        for _ in 1...100 {

            // Turn a random amount
            let turn = self.random(360)
            self.left(turn)

            // Draw a random line length
            let distance = self.random(250)
            self.forward(distance * scale)

            // Go back to centre of canvas and original heading
            self.penUp()
            self.goto(atX, atY)

            self.setHeading(0)
            self.penDown()

        }

        // Hide the turtle when done
        self.hideTortoise()
    }

    func dashedcircle(atX: Double, atY: Double, scaleFactor scale: Double = 1.0) {

        self.penUp()
        self.goto(atX, atY)
        self.penDown()
        for _ in 1...36 {
            self.penUp()

            self.forward(5 * scale)
            self.right(5)
            self.penDown()
            self.forward(7 * scale)
            self.right(5)

        }
    }

    func hill() {
        //draw line going down
        self.ht()
        self.penUp()
        // penSize
        self.penSize(5)
        self.setH(270)
        self.fd(360)
        self.penDown()
        self.setH(100)
        self.fd(750)
        self.penUp()
    }

    func jump() {
        // move to the half of the line
        self.penSize(3)
        self.setH(270)
        self.fd(510)
        self.rt(90)
        self.fd(90)
        self.setH(90)
        //Go up for the jump
        self.curve(withSides: -80, withSize: 20, drawSides: 6)
        self.penDown()
        self.setH(180)
        self.fd(43)
        self.penUp()

    }

    func rail() {
        // move to the start of the rail
        self.setH(90)
        self.fd(40)
        self.lt(90)
        self.fd(50)
        self.penDown()
        self.setH(100)
        self.forward(230)
        //curve back to go back under
        self.curve(withSides: 20, withSize: 3, drawSides: 10)
        self.penDown()
        self.fd(230)
        // curve to go back up
        self.curve(withSides: 20, withSize: 3, drawSides: 10)
        self.penUp()

        // First leg
        //move to the top of the leg
        self.setH(90)
        self.fd(25)
        self.rt(90)
        self.fd(5)
        self.penDown()
        self.setH(180)
        self.fd(60)

        // second leg
        //move to the top of the second rail
        self.penUp()
        self.setH(90)
        self.fd(173)
        self.left(90)
        self.fd(31)
        self.penDown()
        self.setH(180)
        self.fd(60)
        self.penUp()
    }

}
