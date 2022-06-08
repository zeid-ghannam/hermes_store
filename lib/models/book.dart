class Book {
  int? id;
  String? title;
  String? author;
  String? translator;
  String? language;
  String? cover;
  int? numberOfPages;
  double? price;
  String? bookSummary;
  double? rating;
  List<String>? categories;
  String? bookHouse;

  Book({
    this.id,
    this.title,
    this.author,
    this.translator,
    this.language,
    this.cover,
    this.numberOfPages,
    this.price,
    this.bookSummary,
    this.rating,
    this.categories,
    this.bookHouse,
  });

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    translator = json['translator'];
    language = json['language'];
    cover = json['cover'];
    numberOfPages = json['number_of_pages'];
    price = json['price'];
    bookSummary = json['book_summary'];
    rating = json['rating'];
    categories = json['category'];
    bookHouse = json['book_house'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['author'] = author;
    data['translator'] = translator;
    data['language'] = language;
    data['cover'] = cover;
    data['number_of_pages'] = numberOfPages;
    data['price'] = price;
    data['book_summary'] = bookSummary;
    data['rating'] = rating;
    data['category'] = categories;
    data['book_house'] = bookHouse;
    return data;
  }
}
