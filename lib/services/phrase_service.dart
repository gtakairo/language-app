import '../../models/phrase.dart';

class PhraseService {
  final List<Phrase> allPhrases = [
    Phrase('こんにちは', 'konnichiwa.mp3'),
    Phrase('ありがとう', 'arigatou.mp3'),
    Phrase('さようなら', 'sayounara.mp3'),
  ];

  final List<Phrase> _favorites = [];

  List<Phrase> get favorites => _favorites;

  void toggleFavorite(Phrase phrase) {
    if (_favorites.contains(phrase)) {
      _favorites.remove(phrase);
    } else {
      _favorites.add(phrase);
    }
  }

  bool isFavorite(Phrase phrase) => _favorites.contains(phrase);
}