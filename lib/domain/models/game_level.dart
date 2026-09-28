import 'package:flutter/foundation.dart';

class BlockShape {
  final List<List<int>> matrix;
  final int rows;
  final int cols;

  BlockShape({required this.matrix})
      : rows = matrix.length,
        cols = matrix.isEmpty ? 0 : matrix[0].length;

  static final BlockShape single = BlockShape(matrix: [
    [1]
  ]);

  static final BlockShape line2H = BlockShape(matrix: [
    [1, 1]
  ]);
  static final BlockShape line3H = BlockShape(matrix: [
    [1, 1, 1]
  ]);
  static final BlockShape line4H = BlockShape(matrix: [
    [1, 1, 1, 1]
  ]);
  static final BlockShape line5H = BlockShape(matrix: [
    [1, 1, 1, 1, 1]
  ]);

  static final BlockShape line2V = BlockShape(matrix: [
    [1],
    [1]
  ]);
  static final BlockShape line3V = BlockShape(matrix: [
    [1],
    [1],
    [1]
  ]);
  static final BlockShape line4V = BlockShape(matrix: [
    [1],
    [1],
    [1],
    [1]
  ]);
  static final BlockShape line5V = BlockShape(matrix: [
    [1],
    [1],
    [1],
    [1],
    [1]
  ]);

  static final BlockShape square2x2 = BlockShape(matrix: [
    [1, 1],
    [1, 1]
  ]);
  static final BlockShape square3x3 = BlockShape(matrix: [
    [1, 1, 1],
    [1, 1, 1],
    [1, 1, 1]
  ]);

  static final BlockShape l2x2TL = BlockShape(matrix: [
    [1, 1],
    [1, 0]
  ]);
  static final BlockShape l2x2TR = BlockShape(matrix: [
    [1, 1],
    [0, 1]
  ]);
  static final BlockShape l2x2BL = BlockShape(matrix: [
    [1, 0],
    [1, 1]
  ]);
  static final BlockShape l2x2BR = BlockShape(matrix: [
    [0, 1],
    [1, 1]
  ]);

  static final BlockShape l3x3TL = BlockShape(matrix: [
    [1, 1, 1],
    [1, 0, 0],
    [1, 0, 0]
  ]);
  static final BlockShape l3x3TR = BlockShape(matrix: [
    [1, 1, 1],
    [0, 0, 1],
    [0, 0, 1]
  ]);
  static final BlockShape l3x3BL = BlockShape(matrix: [
    [1, 0, 0],
    [1, 0, 0],
    [1, 1, 1]
  ]);
  static final BlockShape l3x3BR = BlockShape(matrix: [
    [0, 0, 1],
    [0, 0, 1],
    [1, 1, 1]
  ]);

  static final BlockShape tUp = BlockShape(matrix: [
    [0, 1, 0],
    [1, 1, 1]
  ]);
  static final BlockShape tDown = BlockShape(matrix: [
    [1, 1, 1],
    [0, 1, 0]
  ]);
  static final BlockShape tLeft = BlockShape(matrix: [
    [0, 1],
    [1, 1],
    [0, 1]
  ]);
  static final BlockShape tRight = BlockShape(matrix: [
    [1, 0],
    [1, 1],
    [1, 0]
  ]);

  static final BlockShape sH = BlockShape(matrix: [
    [0, 1, 1],
    [1, 1, 0]
  ]);
  static final BlockShape sV = BlockShape(matrix: [
    [1, 0],
    [1, 1],
    [0, 1]
  ]);

  static final BlockShape zH = BlockShape(matrix: [
    [1, 1, 0],
    [0, 1, 1]
  ]);
  static final BlockShape zV = BlockShape(matrix: [
    [0, 1],
    [1, 1],
    [1, 0]
  ]);

  static final BlockShape lUp = BlockShape(matrix: [
    [1, 0],
    [1, 0],
    [1, 1]
  ]);
  static final BlockShape lDown = BlockShape(matrix: [
    [1, 1],
    [0, 1],
    [0, 1]
  ]);
  static final BlockShape lLeft = BlockShape(matrix: [
    [1, 1, 1],
    [1, 0, 0]
  ]);
  static final BlockShape lRight = BlockShape(matrix: [
    [0, 0, 1],
    [1, 1, 1]
  ]);

  static final BlockShape jUp = BlockShape(matrix: [
    [0, 1],
    [0, 1],
    [1, 1]
  ]);
  static final BlockShape jDown = BlockShape(matrix: [
    [1, 1],
    [1, 0],
    [1, 0]
  ]);
  static final BlockShape jLeft = BlockShape(matrix: [
    [1, 0, 0],
    [1, 1, 1]
  ]);
  static final BlockShape jRight = BlockShape(matrix: [
    [1, 1, 1],
    [0, 0, 1]
  ]);

  static final BlockShape rect2x3 = BlockShape(matrix: [
    [1, 1, 1],
    [1, 1, 1]
  ]);
  static final BlockShape rect3x2 = BlockShape(matrix: [
    [1, 1],
    [1, 1],
    [1, 1]
  ]);

  static final BlockShape plus = BlockShape(matrix: [
    [0, 1, 0],
    [1, 1, 1],
    [0, 1, 0]
  ]);

  static final BlockShape diag2TLBR = BlockShape(matrix: [
    [1, 0],
    [0, 1]
  ]);
  static final BlockShape diag2TRBL = BlockShape(matrix: [
    [0, 1],
    [1, 0]
  ]);

  static final BlockShape diag3TLBR = BlockShape(matrix: [
    [1, 0, 0],
    [0, 1, 0],
    [0, 0, 1]
  ]);
  static final BlockShape diag3TRBL = BlockShape(matrix: [
    [0, 0, 1],
    [0, 1, 0],
    [1, 0, 0]
  ]);

  static final BlockShape uUp = BlockShape(matrix: [
    [1, 0, 1],
    [1, 1, 1]
  ]);
  static final BlockShape uDown = BlockShape(matrix: [
    [1, 1, 1],
    [1, 0, 1]
  ]);
  static final BlockShape uLeft = BlockShape(matrix: [
    [1, 1],
    [0, 1],
    [1, 1]
  ]);
  static final BlockShape uRight = BlockShape(matrix: [
    [1, 1],
    [1, 0],
    [1, 1]
  ]);

  static final List<BlockShape> allShapes = [
    single,
    line2H, line3H, line4H, line5H,
    line2V, line3V, line4V, line5V,
    square2x2, square3x3,
    l2x2TL, l2x2TR, l2x2BL, l2x2BR,
    l3x3TL, l3x3TR, l3x3BL, l3x3BR,
    tUp, tDown, tLeft, tRight,
    sH, sV, zH, zV,
    lUp, lDown, lLeft, lRight,
    jUp, jDown, jLeft, jRight,
    rect2x3, rect3x2,
    plus,
    diag2TLBR, diag2TRBL,
    diag3TLBR, diag3TRBL,
    uUp, uDown, uLeft, uRight,
  ];
}

@immutable
class GameLevel {
  const GameLevel({
    required this.levelNumber,
    required this.gridSize,
    required this.targetScore,
    required this.targetClears,
    required this.targetFrozen,
    required this.targetGems,
    required this.initialGrid,
  });

  final int levelNumber;
  final int gridSize;
  final int targetScore;
  final int targetClears;
  final int targetFrozen;
  final int targetGems;
  final List<List<int>> initialGrid;
}
