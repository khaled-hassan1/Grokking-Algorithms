import 'dart:collection';

// Step 3: Define the BFS function
void bfs(Map<String, List<String>> graph, String startNode) {
  // Create a queue for nodes to visit
  final Queue<String> queue = Queue();

  // Set to keep track of visited nodes
  final Set<String> visited = {};

  // Step 4: Start by adding the starting node to the queue
  queue.add(startNode);

  // Step 5: Mark the starting node as visited
  visited.add(startNode);

  // Step 6: Process nodes in the queue until it's empty
  while (queue.isNotEmpty) {
    // Step 7: Remove the first node in the queue
    final String currentNode = queue.removeFirst();
    print('Visiting: $currentNode');

    // Step 8: Get neighbors of the current node
    final List<String>? neighbors = graph[currentNode];

    if (neighbors != null) {
      // Step 9: Add unvisited neighbors to the queue
      for (final String neighbor in neighbors) {
        if (!visited.contains(neighbor)) {
          queue.add(neighbor); // Add to queue for later visiting
          visited.add(neighbor); // Mark as visited
        }
      }
    }
  }
}
