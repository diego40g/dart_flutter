void main() {
  final mySquare = Square(side: 10);

  // mySquare.side = -5;
  mySquare.side = 5;

  print('object area: ${mySquare.calculateArea()}');
}

//El guion bajo (_) es para hacer privado el atributo
class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value <= 0) {
      throw ('Side can\'t be less than or equal to 0');
    }
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
