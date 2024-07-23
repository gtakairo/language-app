import 'package:flutter/material.dart';
import '../../models/phrase.dart';

class PhraseList extends StatelessWidget {
  final List<Phrase> phrases;
  final Function(Phrase) onFavoriteToggle;
  final Function(Phrase) isFavorite;

  PhraseList({required this.phrases, required this.onFavoriteToggle, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: phrases.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(phrases[index].text),
          trailing: IconButton(
            icon: Icon(
              isFavorite(phrases[index]) ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () => onFavoriteToggle(phrases[index]),
          ),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${phrases[index].text}の音声を再生中')),
            );
          },
        );
      },
    );
  }
}