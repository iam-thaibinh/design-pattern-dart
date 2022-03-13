abstract class Shape {
  void render();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  void render() {
    print('Circle with radius $radius');
  }
}

//Decorator Class
class ColoredShape {
  Shape shape;
  String color;

  ColoredShape(this.shape, this.color);

  void render() {
    shape.render();
    print('with color $color');
  }
}

void main() {
  final circle = Circle(2.0);
  //circle.render();

  final redCircle = ColoredShape(circle, 'red');
  redCircle.render();
}
