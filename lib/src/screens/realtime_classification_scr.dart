import 'package:ai_audio_analysis/src/app_state.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/string_utils.dart';
import '../widgets/big_cart.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * build() called every time the state changes
     * - Must return a widget/ nested tree of widgets 
     */
    var appState = context.watch<AppState>();

    /*
    watch() -> listens to changes in the app state
    */
    String title = 'Draft UI for AI Audio Analysis Project:';
    WordPair wordPair = appState.current;
    String subText = appState.mainText;
    var wp =  AppUtils.fromWordPair(wordPair);


    IconData icon;
    if (appState.favorites.contains(wordPair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }
    /**
     * icon logic
     */

    return Scaffold(
      /**
       * Scaffold -> A typical type of widget
       */
      body: Center(
        child: Column(
          /**
           * Column -> A widget
           */
          mainAxisAlignment: MainAxisAlignment.center,
          /**
           * mainAxisAlignment -> aligns the children vertically -> center
           */
          children: [
            Text(title),
            Text(subText),
            BigCard(mainText: wp),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  icon: Icon(icon),
                  label: Text('Fav')
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text('Next One'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}