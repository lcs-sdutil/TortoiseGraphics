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

}
