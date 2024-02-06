void main() {
  final mySquare = Square(side: -10);
  //Uncaught Error: Assertion failed: "Side must be greater than 0"
}

class Square {
  double _side;

  // Valida que el lado sea mayor a 0
  Square({required double side})
      : assert(side >= 0, 'Side must be greater than 0'),
        _side = side;
}
