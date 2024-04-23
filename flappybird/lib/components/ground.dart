import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flappybird/game/assets.dart';
import 'package:flappybird/game/config.dart';

class Ground extends ParallaxComponent {
  Ground();

  @override
  FutureOr<void> onLoad() async {
    final ground = await Flame.images.load(Assets.ground);
    parallax =
        Parallax([ParallaxLayer(ParallaxImage(ground, fill: LayerFill.none))]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    parallax?.baseVelocity.x = Config.gameSpeed;
  }
}
