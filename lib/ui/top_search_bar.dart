import 'package:flutter/material.dart';

import '../config/config.dart';

class TopSearchBar extends StatefulWidget {
  final TextEditingController controller;

  TopSearchBar({required this.controller});

  @override
  _TopSearchBarState createState() => _TopSearchBarState();
}

class _TopSearchBarState extends State<TopSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style: TextStyle(color: SECONDARY_COLOR),
      cursorColor: SECONDARY_COLOR,
      onChanged: (text) {
        setState(() {});
      },
      decoration: InputDecoration(
        hintText: 'Что хочешь почитать?',
        hintStyle: TextStyle(color: SECONDARY_COLOR),
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (!widget.controller.text.isEmpty)
              IconButton(
                icon: Icon(Icons.clear, color: SECONDARY_COLOR),
                onPressed: () {
                  widget.controller.clear();
                  setState(
                      () {}); // вызывает перестроение виджета при нажатии на иконку
                },
              ),
            IconButton(
              icon: Icon(Icons.search, color: SECONDARY_COLOR),
              onPressed: () {
                // Здесь будет логика поиска
              },
            ),
          ],
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: SECONDARY_COLOR),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: SECONDARY_COLOR),
        ),
      ),
    );
  }
}
