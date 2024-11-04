void dijkstra() {
  final Map<String, Map<String, double>> graph = {
    'start': {'a': 6, 'b': 2},
    'b': {'a': 3, 'fin': 5},
    'a': {'fin': 1},
    'fin': {}
  };

  final Map<String, double?> costs = {'a': 6, 'b': 2, 'fin': double.infinity};
  final Map<String, String?> parents = {
    'a': 'start',
    'b': 'start',
    'fin': null
  };

  final Set<String> process = {};
  String? node = lowestNode(costs, process);
  while (node != null) {
    final double currentCost = costs[node]!;
    final Map<String, double> neighbors = graph[node]!;
    for (final String neighbor in neighbors.keys) {
      final double newCost = currentCost + neighbors[neighbor]!;
      if (newCost < costs[neighbor]!) {
        parents[neighbor] = node;
        costs[neighbor] = newCost;
      }
    }
    process.add(node);
    node = lowestNode(costs, process);
  }
  print('Costs: $costs');
  print('Parents: $parents');
}

String? lowestNode(
    final Map<String, double?> costs, final Set<String> procesed) {
  double lowestCost = double.infinity;
  String? lowestCostNode;
  for (final String cost in costs.keys) {
    final double? currentCost = costs[cost];
    if (currentCost != null &&
        lowestCost > currentCost &&
        !procesed.contains(cost)) {
      lowestCost = currentCost;
      lowestCostNode = cost;
    }
  }
  return lowestCostNode;
}
