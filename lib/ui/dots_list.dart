import 'package:flutter/material.dart';

void showDotsMenu(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(0),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Добавить в избранное'),
              onTap: () {
                // Здесь вы можете добавить логику для добавления в избранное
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Отложить на потом'),
              onTap: () {
                // Здесь вы можете добавить логику для отложения на потом
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
