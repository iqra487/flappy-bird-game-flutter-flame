import 'dart:async';
import 'dart:io';

import 'package:flame/components.dart';
import 'package:flappybird/components/pipe.dart';
import 'package:flappybird/game/config.dart';
import 'package:flappybird/game/pipePosition.dart';

class PipeGroup extends PositionComponent {
  PipeGroup();

  @override
  FutureOr<void> onLoad() {
    addAll([
      Pipe(height: 300, pipePosition: PipePosition.bottom),
      Pipe(height: 200, pipePosition: PipePosition.top),
      Pipe(height: 600, pipePosition: PipePosition.bottom),
      Pipe(height: 250, pipePosition: PipePosition.top)
    ]);
    @override
    void update(dt) {
      super.update(dt);
      position.x -= Config.gameSpeed * dt;
    }
  }
}
