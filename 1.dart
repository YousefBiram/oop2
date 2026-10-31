import 'dart:math';

class GeometricObject {
  late String color;
  late bool filled;

  GeometricObject.empty() {
    color = "white";
    filled = false;
  }

  GeometricObject(this.color, this.filled);

  @override
  String toString() {
    return "color = $color, filled = $filled";
  }
}

class Triangle extends GeometricObject {
  late double side1;
  late double side2;
  late double side3;

  Triangle.empty() : super.empty() {
    side1 = 1.0;
    side2 = 1.0;
    side3 = 1.0;
  }
  Triangle(this.side1, this.side2, this.side3, super.color, super.filled);

  double getArea(){
    double s = getPerimeter() /2;
    return sqrt(s*(s-side1)*(s-side2)*(s-side3));
  }
  double getPerimeter(){
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    String description = "Triangle: side1 = $side1, side2 = $side2, side3 = $side3, ${super.toString()}" ;
    return description;
  }
}

class Rectangle extends GeometricObject{
  late double height;
  late double width;

  Rectangle.empty() : super.empty(){
    height = 1.0;
    width = 1.0;
  }
  Rectangle(this.height,this.width,super.color,super.filled);

  double getArea(){
    return width*height;
  }
  double getPerimeter(){
    return 2*(width+height);
  }
  @override
  String toString(){
    String descObj = super.toString();
    String description = "Rectangle: height = $height, width = $width, $descObj" ;
    return description;

  }
}

void main(){
  Triangle triangle1 = Triangle(26.0, 535.0, 531.0, "Black",true);
  Rectangle rectangle1 = Rectangle(55.0, 653.0, "Red", false);
  Triangle triangle2 = Triangle.empty();
  Rectangle rectangle2 = Rectangle.empty();

  print(triangle1.getArea());
  print(triangle1.getPerimeter());
  print(triangle1.toString());
  print("=============================");
  print(triangle2.getArea());
  print(triangle2.getPerimeter());
  print(triangle2.toString());
  print("==============================");
  print(rectangle1.getArea());
  print(rectangle1.getPerimeter());
  print(rectangle1.toString());
  print("================================");
  print(rectangle2.getArea());
  print(rectangle2.getPerimeter());
  print(rectangle2.toString());

}