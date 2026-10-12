import 'package:blockblast/domain/models/game_level.dart';

class BlockBlastRules {
  static bool canPlacePiece(
    List<List<int>> board,
    BlockShape piece,
    int startRow,
    int startCol,
  ) {
    final N = board.length;
    if (startRow < 0 || startCol < 0) return false;
    if (startRow + piece.rows > N || startCol + piece.cols > N) return false;

    for (int r = 0; r < piece.rows; r++) {
      for (int c = 0; c < piece.cols; c++) {
        if (piece.matrix[r][c] == 1) {
          if (board[startRow + r][startCol + c] != 0) {
            return false;
          }
        }
      }
    }
    return true;
  }

  static bool canAnyPieceBePlaced(
    List<List<int>> board,
    List<BlockShape?> pieces,
  ) {
    final N = board.length;
    for (final piece in pieces) {
      if (piece == null) continue;
      for (int r = 0; r <= N - piece.rows; r++) {
        for (int c = 0; c <= N - piece.cols; c++) {
          if (canPlacePiece(board, piece, r, c)) {
            return true;
          }
        }
      }
    }
    return false;
  }

  static List<int> getCompletedRows(List<List<int>> board) {
    final N = board.length;
    final rows = <int>[];
    for (int r = 0; r < N; r++) {
      bool full = true;
      for (int c = 0; c < N; c++) {
        if (board[r][c] == 0) {
          full = false;
          break;
        }
      }
      if (full) rows.add(r);
    }
    return rows;
  }

  static List<int> getCompletedCols(List<List<int>> board) {
    final N = board.length;
    final cols = <int>[];
    for (int c = 0; c < N; c++) {
      bool full = true;
      for (int r = 0; r < N; r++) {
        if (board[r][c] == 0) {
          full = false;
          break;
        }
      }
      if (full) cols.add(c);
    }
    return cols;
  }

  static bool canSolvePieces(
    List<List<int>> board,
    List<BlockShape> pieces,
  ) {
    return _canSolveStep(board, pieces, 0, 0);
  }

  static bool _canSolveStep(
    List<List<int>> board,
    List<BlockShape> pieces,
    int usedMask,
    int placedCount,
  ) {
    if (placedCount == pieces.length) return true;
    final n = board.length;
    for (int i = 0; i < pieces.length; i++) {
      if ((usedMask & (1 << i)) != 0) continue;
      final piece = pieces[i];
      for (int r = 0; r <= n - piece.rows; r++) {
        for (int c = 0; c <= n - piece.cols; c++) {
          if (canPlacePiece(board, piece, r, c)) {
            final nextBoard = List.generate(n, (row) => List<int>.from(board[row]));
            for (int pr = 0; pr < piece.rows; pr++) {
              for (int pc = 0; pc < piece.cols; pc++) {
                if (piece.matrix[pr][pc] == 1) {
                  nextBoard[r + pr][c + pc] = 1;
                }
              }
            }
            final completedRows = getCompletedRows(nextBoard);
            final completedCols = getCompletedCols(nextBoard);
            if (completedRows.isNotEmpty || completedCols.isNotEmpty) {
              for (final cr in completedRows) {
                for (int cc = 0; cc < n; cc++) {
                  nextBoard[cr][cc] = (nextBoard[cr][cc] == 9) ? 1 : 0;
                }
              }
              for (final cc in completedCols) {
                for (int cr = 0; cr < n; cr++) {
                  nextBoard[cr][cc] = (nextBoard[cr][cc] == 9) ? 1 : 0;
                }
              }
            }
            if (_canSolveStep(nextBoard, pieces, usedMask | (1 << i), placedCount + 1)) {
              return true;
            }
          }
        }
      }
    }
    return false;
  }
}
