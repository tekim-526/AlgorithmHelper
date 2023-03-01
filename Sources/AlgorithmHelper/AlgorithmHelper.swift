public class Node<T> {
    let value: T
    public var neighbors: [Node<T>]
    var visited: Bool
    
    public init(value: T) {
        self.value = value
        self.neighbors = []
        self.visited = false
    }
}

public class Algorithm {
    public static func dfs<T>(startNode: Node<T>) -> [T] {
        var result = [T]() // Initialize an array to hold the values in DFS order
        var stack = [Node<T>]() // Initialize a stack to hold the nodes to be visited
        stack.append(startNode) // Add the start node to the stack
        
        while !stack.isEmpty { // Continue as long as there are nodes in the stack
            let node = stack.removeLast() // Get the next node from the stack
            
            if !node.visited {
                result.append(node.value) // Add the value of the node to the result array
                node.visited = true // Mark the node as visited
                
                for neighbor in node.neighbors.reversed() {
                    if !neighbor.visited {
                        stack.append(neighbor) // Add the neighbor to the stack if it has not been visited
                    }
                }
            }
        }
        
        return result // Return the array of values in DFS order (reversed from the stack order)
    }
    
    // Define the BFS algorithm function
    public static func bfs<T>(startNode: Node<T>) -> [T] {
        var result = [T]() // Initialize an array to hold the values in BFS order
        var queue = [Node<T>]() // Initialize a queue to hold the nodes to be visited
        queue.append(startNode) // Add the start node to the queue
        
        while !queue.isEmpty { // Continue as long as there are nodes in the queue
            let node = queue.removeFirst() // Get the next node from the queue
            
            if !node.visited {
                result.append(node.value) // Add the value of the node to the result array
                node.visited = true // Mark the node as visited
                
                for neighbor in node.neighbors {
                    if !neighbor.visited {
                        queue.append(neighbor) // Add the neighbor to the queue if it has not been visited
                    }
                }
            }
        }
        return result // Return the array of values in BFS order
    }
    
    public static func binarySearch<T: Comparable>(_ array: [T], num: T) -> Bool {
        var start = 0
        var end = (array.count - 1)
        let array = array.sorted()
        
        while start <= end {
            let mid = (start + end) / 2
            
            if array[mid] == num { return true }
            if array[mid] > num {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return false
    }
    
    public static func bruteForce<T: Equatable>(_ array: [T], value: T) -> Bool {
        for element in array {
            if value == element {
                return true
            }
        }
        return false
    }
    
    public static func bruteForce<T: Equatable>(_ array: [T], value: T) -> T {
        for element in array {
            if value == element {
                return value
            }
        }
        return value
    }
    
}
