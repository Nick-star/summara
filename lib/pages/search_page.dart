import 'package:flutter/material.dart';
import '../ui/top_search_bar.dart';
import '../ui/book_list.dart';
import '../ui/book_list_item.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TopSearchBar(controller: _searchController),
          ),
          Expanded(
            child: BookList(
              books: [
                BookListItem(title: '1984', author: 'Джордж Оруэлл'),
                BookListItem(title: 'Гарри Поттер', author: 'Джоан Роулинг'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
