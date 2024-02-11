enum BookStatus { available, checkedOut, reserved }

class Book {
  int id;
  String title;
  BookStatus? status;
  String? borrower;
  Book(this.id, this.title, this.status);

  void checkStatus(String name) {
    switch (status) {
      case BookStatus.available:
        print("Book is available");
        status = BookStatus.checkedOut;
        print("Name of borrower = $name, ${st()}");
        break;
      case BookStatus.checkedOut:
        print("Book is checked out");
        break;
      case BookStatus.reserved:
        print("Book is already reserved!!");
        break;
      default:
        print("Invalid status");
    }
  }

  st() {
    if (status == BookStatus.checkedOut) {
      return "Already Checked out";
    }
    // return "";
  }

  void reserved() {
    if (status != BookStatus.available) {
      print("Not available right now");
    } else {
      status = BookStatus.reserved;
    }
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void display() {
    for (var book in books) {
      print(
          "Book ID: ${book.id}, Title: ${book.title}, Status: ${book.status}");
    }
  }
}

void main() {
  Book b = Book(101, "RAmayan", BookStatus.available);

  b.checkStatus("karan");
  Library library = Library();
  library.addBook(b);
  Book b1 = Book(201, "setu", BookStatus.reserved);

  b1.checkStatus("op");
  library.addBook(b1);
  library.display();
  b.reserved();
}
