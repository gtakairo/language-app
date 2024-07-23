import 'package:flutter/material.dart';
import '../widgets/phrase_list.dart';
import '../widgets/app_drawer.dart';
import '../../models/phrase.dart';
import '../services/phrase_service.dart';

class LanguageLearningPage extends StatefulWidget {
  @override
  _LanguageLearningPageState createState() => _LanguageLearningPageState();
}

class _LanguageLearningPageState extends State<LanguageLearningPage> {
  final PhraseService _phraseService = PhraseService();
  bool _showingFavorites = false;

  void _toggleView(bool showFavorites) {
    setState(() {
      _showingFavorites = showFavorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('言語学習アプリ2'),
      ),
      drawer: AppDrawer(onViewChanged: _toggleView),
      body: PhraseList(
        phrases: _showingFavorites ? _phraseService.favorites : _phraseService.allPhrases,
        onFavoriteToggle: _phraseService.toggleFavorite,
        isFavorite: _phraseService.isFavorite,
      ),
    );
  }
}