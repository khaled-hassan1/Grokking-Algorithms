void dijkstraAlgorithm() {
  // Graph representing nodes and their edges with weights
  // The graph is modeled as a map where each node points to its neighbors and the cost to reach them
  final Map<String, Map<String, double>> graph = {
    'start': {
      'a': 6,
      'b': 2
    }, // From 'start' to 'a' costs 6, and to 'b' costs 2
    'a': {'fin': 1}, // From 'a' to 'fin' costs 1
    'b': {'a': 3, 'fin': 5}, // From 'b' to 'a' costs 3, and to 'fin' costs 5
    'fin': {} // 'fin' has no outgoing edges
  };

  // Initialize the cost table for each node
  // This represents the minimum cost to reach each node from the start
  final Map<String, double> costs = {
    'a': 6, // The cost to reach 'a' from 'start' is 6
    'b': 2, // The cost to reach 'b' from 'start' is 2
    'fin': double
        .infinity, // We don't yet know the cost to reach 'fin', so set it to infinity
  };

  // Initialize the parents table to track the shortest path
  // This will store the node from which we came to reach each node
  final Map<String, String?> parents = {
    'a': 'start', // We reach 'a' from 'start'
    'b': 'start', // We reach 'b' from 'start'
    'fin': null, // We don't yet know how to reach 'fin'
  };

  // Set of processed nodes to avoid reprocessing
  // This will track which nodes have been fully processed
  final Set<String> processed = {};

  // Dijkstra's Algorithm begins
  // Find the node with the lowest cost that hasn't been processed yet
  String? lowestNode = findLowestCostNode(costs, processed);

  // Continue looping as long as there's a node left to process
  while (lowestNode != null) {
    // Get the current cost of the lowest cost node
    final double currentCost = costs[lowestNode]!;

    // Get the neighbors of the current node and their edge costs
    final Map<String, double> neighbors = graph[lowestNode]!;

    // Loop through all neighbors of the current node
    for (final String neighbor in neighbors.keys) {
      // Calculate the new cost to reach the neighbor through the current node
      final double newCost = currentCost + neighbors[neighbor]!;

      // If the new cost is lower than the previously known cost
      if (costs[neighbor]! > newCost) {
        // Update the cost to the new lower cost
        costs[neighbor] = newCost;

        // Update the parent to reflect that we came to this neighbor via the current node
        parents[neighbor] = lowestNode;
      }
    }

    // Mark the current node as processed
    processed.add(lowestNode);

    // Find the next lowest cost node that hasn't been processed yet
    lowestNode = findLowestCostNode(costs, processed);
  }

  // Output the shortest path and costs (optional, for debugging or visualization)
  print('Costs: $costs'); // Print the minimum costs to reach each node
  print('Parents: $parents'); // Print the parent relationships for each node
}

/// Finds the lowest cost node that hasn't been processed
/// Takes in the current cost table and the set of processed nodes
String? findLowestCostNode(
    final Map<String, double> costs, final Set<String> processed) {
  double lowestCost = double.infinity; // Start with infinity as the lowest cost
  String? lowestCostNode; // This will store the lowest cost node

  // Loop through all nodes in the cost table
  for (final String node in costs.keys) {
    final double cost = costs[node]!; // Get the cost of the current node

    // If the cost is lower than the current lowest and the node hasn't been processed
    if (cost < lowestCost && !processed.contains(node)) {
      lowestCost = cost; // Update the lowest cost
      lowestCostNode = node; // Set this node as the lowest cost node
    }
  }

  // Return the node with the lowest cost, or null if no unprocessed nodes remain
  return lowestCostNode;
}
