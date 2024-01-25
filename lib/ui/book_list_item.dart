import 'package:flutter/material.dart';
import '../config/config.dart';
import '../ui/dots_list.dart';

class BookListItem extends StatelessWidget {
  final String title;
  final String author;

  BookListItem({required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Здесь вы можете обработать нажатие, например, перейти на новый экран
      },
      child: Container(
        width: double.infinity,
        height: 60.0, // фиксированная высота
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          title: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(color: SECONDARY_COLOR, fontSize: 20.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      author,
                      style: TextStyle(color: SECONDARY_COLOR, fontSize: 12.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Center(
                child: IconButton(
                  icon: Icon(Icons.more_vert, color: SECONDARY_COLOR),
                  onPressed: () {
                    showDotsMenu(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
