class Book{
  String title, author;
  int pages;

  // constructor 
  Book(this.title,this.author,this.pages);

// method to print book details
  void describe(){
    print("The title is $title, the author is $author and the number of pages is $pages");
  }
  
}

void main(){
  Book book1 = Book("The Alchemist", "Paulo Coelho", 208);
  Book book2 = Book("The Catcher in the Rye", "J.D. Salinger", 277);

  book1.describe();
  book2.describe();
}