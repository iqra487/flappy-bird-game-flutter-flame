import 'package:flame/game.dart';
import 'package:flappybird/game/flappybirdgame.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(GameWidget(game: game));
}
