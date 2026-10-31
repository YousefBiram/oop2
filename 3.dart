abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(this.length, this.width, String color) : super(color);

  @override
  double getArea() => (length * width).toDouble();

  @override
  String toString() =>
      "Rectangle: color = $color, length = $length, width = $width, area = ${getArea()}";
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(this.base, this.height, String color) : super(color);

  @override
  double getArea() => 0.5 * base * height;

  @override
  String toString() =>
      "Triangle: color = $color, base = $base, height = $height, area = ${getArea()}";
}



void main() {
  Shape r = Rectangle(4, 5, "red");
  Shape t = Triangle(6, 3, "blue");

  List<Shape> shapes = [r, t];

  for (Shape s in shapes) {
    print(s);
  }
}