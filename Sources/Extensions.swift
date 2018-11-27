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
}
