void greedyAlgrothim() {
  // greedy ahgorithm from grokking
  final Set<String> statesNeeded = {'mt', 'wa', 'or', 'id', 'nv', 'ut'};

  const Map<String, Set<String>> stations = {
    'kone': {'id', 'nv', 'ut'},
    'ktwo': {'wa', 'id', 'mt'},
    'kthree': {'or', 'nv', 'ca'},
    'kfour': {'nv', 'ut'},
    'kfive': {'ca', 'az'},
  };

  final Set<String> finalStation = {};

  while (statesNeeded.isNotEmpty) {
    String? bestStation;
    Set<String> statesCoverd = {};
    for (final String station in stations.keys) {
      final Set<String> covered = stations[station]!.intersection(statesNeeded);
      if (covered.length > statesCoverd.length) {
        bestStation = station;
        statesCoverd = covered;
      }
    }

    if (bestStation != null) {
      finalStation.add(bestStation);
      statesNeeded.removeAll(statesCoverd);
    }
  }
}
