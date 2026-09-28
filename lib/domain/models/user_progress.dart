class UserProgress {
  const UserProgress({
    required this.currentLevel,
    required this.highestScore,
    required this.unlockedLevels,
    required this.bestScore,
    required this.bestTimeSeconds,
    this.endlessHighestScore = 0,
  });

  final int currentLevel;
  final int highestScore;
  final int unlockedLevels;
  final Map<int, int> bestScore;
  final Map<int, int> bestTimeSeconds;
  final int endlessHighestScore;

  UserProgress copyWith({
    int? currentLevel,
    int? highestScore,
    int? unlockedLevels,
    Map<int, int>? bestScore,
    Map<int, int>? bestTimeSeconds,
    int? endlessHighestScore,
  }) {
    return UserProgress(
      currentLevel: currentLevel ?? this.currentLevel,
      highestScore: highestScore ?? this.highestScore,
      unlockedLevels: unlockedLevels ?? this.unlockedLevels,
      bestScore: bestScore ?? this.bestScore,
      bestTimeSeconds: bestTimeSeconds ?? this.bestTimeSeconds,
      endlessHighestScore: endlessHighestScore ?? this.endlessHighestScore,
    );
  }
}
