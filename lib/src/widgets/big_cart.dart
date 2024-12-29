import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.mainText,
  });

  final String mainText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    /**
     * Theme.of(context) -> get the theme of the current context
     */

    final style = theme.textTheme.displayMedium!.copyWith(
      /**
       * copyWith() -> returns a copy with only the specified properties
       * Ctrl + Shift + Space (vscode-windows) to see allowed properties in this copyWith()
       */
      color: theme.colorScheme.onPrimary,
      fontFamily: "Choco cooky",
      
    );

    /**
     * '!' - bang operator -> non-null assertion operator
     */

    return Card(
      color: theme.colorScheme.primary,
      /**
       * get the primary color scheme from the theme
       */

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(mainText, style: style),
      ),
    );
  }
}