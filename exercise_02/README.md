
---

### Exercise 2: Rectangle Class - README.md

```markdown
# Exercise 2: Rectangle Class

Create a `Rectangle` class to calculate area and perimeter.

## Requirements
- **Fields**:
  - `width` (double)
  - `height` (double)
- **Constructor**: Initializes both fields.
- **Methods**:
  - `area()`: Returns `width * height`.
  - `perimeter()`: Returns `2 * (width + height)`.

## Example Usage
```dart
void main() {
  final rect = Rectangle(5.0, 3.0);
  print('Area: ${rect.area()}');       // Output: Area: 15.0
  print('Perimeter: ${rect.perimeter()}'); // Output: Perimeter: 16.0
}