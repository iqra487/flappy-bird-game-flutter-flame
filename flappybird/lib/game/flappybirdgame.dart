import 'dart:async';

import 'package:flame/game.dart';
import 'package:flappybird/components/background.dart';
import 'package:flappybird/components/bird.dart';
import 'package:flappybird/components/ground.dart';

class FlappyBirdGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    addAll([Background(), Ground(), Bird()]);
  }
}
