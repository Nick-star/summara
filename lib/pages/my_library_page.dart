import 'package:flutter/material.dart';
import '../ui/book_list.dart';
import '../ui/book_list_item.dart';
import '../ui/filter_menu.dart';

class MyLibraryPage extends StatefulWidget {
  @override
  _MyLibraryPageState createState() => _MyLibraryPageState();
}

class _MyLibraryPageState extends State<MyLibraryPage> {
  List<BookListItem> books = [
    BookListItem(title: '1984', author: 'Джордж Оруэлл'),
    BookListItem(title: 'Гарри Поттер', author: 'Джоан Роулинг'),
    // Добавьте больше книг здесь
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0), // Измените это
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Моя библиотека',
                        style: TextStyle(fontSize: 24.0),
                      ),
                      Text(
                        '${books.length} книг',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      showFilterMenu(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BookList(books: books),
          ),
        ],
      ),
    );
  }
}
