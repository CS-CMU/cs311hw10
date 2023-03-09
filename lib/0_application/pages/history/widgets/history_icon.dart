import 'package:flutter/material.dart';

class HistoryIcon extends StatelessWidget {
  const HistoryIcon({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Image.network('https://api.genshin.dev/characters/'
        '$id/icon-big');
  }
}
