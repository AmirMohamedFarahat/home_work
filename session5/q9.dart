/*
Library Management System
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
*/

class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book({
    required this.title,
    required this.author,
    required this.isbn,
    this.isAvailable = true,
  });

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: ${isAvailable ? 'Yes' : 'No'}';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book "${book.title}" added to the library.');
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print('You have borrowed "${book.title}".');
        } else {
          print('The book "${book.title}" is currently not available.');
        }
        return;
      }
    }
    print('No book found with ISBN: $isbn.');
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (!book.isAvailable) {
          book.isAvailable = true;
          print('You have returned "${book.title}".');
        } else {
          print('The book "${book.title}" was not borrowed.');
        }
        return;
      }
    }
    print('No book found with ISBN: $isbn.');
  }

  List<Book> searchByTitle(String title) {
    List<Book> matchingBooks =
        books.where((book) => book.title.contains(title, 0)).toList();
    if (matchingBooks.isEmpty) {
      print('No books found with title containing: "$title".');
    }
    return matchingBooks;
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('No books in the library.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        print(book);
      }
    }
  }
}

void main() {
  Library library = Library();

  library.addBook(Book(
      title: 'The Great Gatsby',
      author: 'F. Scott Fitzgerald',
      isbn: '9780743273565'));
  library.addBook(
      Book(title: '1984', author: 'George Orwell', isbn: '9780451524935'));
  library.addBook(Book(
      title: 'To Kill a Mockingbird',
      author: 'Harper Lee',
      isbn: '9780060935467'));

  library.displayBooks();

  library.borrowBook('9780743273565');
  library.borrowBook('9780743273565');

  library.returnBook('9780743273565');
  library.returnBook('9780743273565');

  var searchResults = library.searchByTitle('1984');
  print('Search results:');
  for (var book in searchResults) {
    print(book);
  }

  library.displayBooks();
}
