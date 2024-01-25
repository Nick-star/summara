import 'package:flutter/material.dart';

void showFilterMenu(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            child: ListView(
              children: <Widget>[
                CheckboxListTile(
                  title: Text('Фантастика'),
                  value: true,
                  onChanged: (bool? value) {
                    setState(() {
                      // Здесь вы можете обновить состояние галочки
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Детектив'),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      // Здесь вы можете обновить состояние галочки
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Роман'),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      // Здесь вы можете обновить состояние галочки
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Приключения'),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      // Здесь вы можете обновить состояние галочки
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text('Драма'),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                      // Здесь вы можете обновить состояние галочки
                    });
                  },
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
