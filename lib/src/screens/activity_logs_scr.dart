import 'package:ai_audio_analysis/src/app_state.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/string_utils.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    int listSize = appState.favorites.length;
    return ListView(
      children: [
        Padding(padding: const EdgeInsets.all(20)),
        Text('Displaying $listSize favorite word pair:'),
        for (WordPair pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(AppUtils.fromWordPair(pair)),
          ),
      ],
    );
  }
}