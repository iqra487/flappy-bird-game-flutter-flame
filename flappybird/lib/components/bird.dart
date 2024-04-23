import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappybird/game/assets.dart';
import 'package:flappybird/game/birdMovement.dart';
import 'package:flappybird/game/config.dart';
import 'package:flappybird/game/flappybirdgame.dart';

class Bird extends SpriteGroupComponent with HasGameRef<FlappyBirdGame> {
  Bird();

  @override
  FutureOr<void> onLoad() async {
    final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);
    final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdDownFlap = await gameRef.loadSprite(Assets.birdDownFlap);

    size = Vector2(50, 40);
    position = Vector2(50, gameRef.size.y / 2 - size.y / 2);
    current = BirdMovement.middle;
    sprites = {
      BirdMovement.middle: birdMidFlap,
      BirdMovement.up: birdUpFlap,
      BirdMovement.down: birdDownFlap,
    };
  }
}
