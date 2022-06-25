// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWords();
}

class _RandomWords extends State<RandomWords> {
  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    return Text(wordPair.asPascalCase);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sportsball',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('⚽️ Sportsball ⚽️'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
