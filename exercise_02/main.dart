class Rectangle{
  double width;
  double height;

// constructor

Rectangle(this.width, this.height);

// Method
double area(){
  return width * height;
}
double perimeter(){
  return 2 * (width + height);
}
}

void main(){
  Rectangle rectangle = Rectangle(5, 10);
  print("Area: ${rectangle.area()}");
  print("Perimeter: ${rectangle.perimeter()}");

}