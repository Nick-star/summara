import 'package:flutter/material.dart';
import '../config/config.dart';
import 'book_list_item.dart';

class BookList extends StatelessWidget {
  final List<BookListItem> books;

  BookList({required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return books[index];
      },
    );
  }
}
