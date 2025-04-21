class Student {
  String name;
  int grade;

  // Constructor with validation
  Student(this.name, this.grade) {
    if (grade < 1 || grade > 100) {
      throw ArgumentError("Invalid grade: $grade. Grade must be between 1 and 100.");
    }
  }

  // Method to evaluate performance
  String performance() {
    if (grade >= 90) {
      return "Excellent";
    } else if (grade >= 80) {
      return "Good";
    } else if (grade >= 70) {
      return "Average";
    } else if (grade >= 25) {
      return "Poor";
    } else {
      return "Failed"; // Optional, for grades less than 25
    }
  }
}

void main() {
  
    final student1 = Student('Alice', 95);
    print(student1.performance()); // Output: Excellent

    final student2 = Student('Bob', 60);
    print(student2.performance()); // Output: Average
}
