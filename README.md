# AlgorithmHelper

## **This is a library for people preparing for coding tests with Swift launguage.**

## Supported only at SPM
## It is recommended to be added in a project based on command line tool.


## **📝 Example of use with DFS Algorithm**

``` swift
// Create some nodes with different value types
let a = Node(value: "a")
let b = Node(value: "b")
let c = Node(value: "c")
let d = Node(value: "d")
let e = Node(value: "e")
let f = Node(value: "f")

// Add neighbors to the nodes
a.neighbors = [b, c]
b.neighbors = [a,d,e]
c.neighbors = [a,f]
d.neighbors = [b]
e.neighbors = [b]
f.neighbors = [c]

// result
let dfsResult = Algorithm.shared.dfs(startNode: a)//["a", "b", "d", "e", "c", "f"]
print(dfsResult)
``` 

## **📝 Example of use with BFS Algorithm**

``` swift
// Create some nodes with different value types
let a = Node(value: "a")
let b = Node(value: "b")
let c = Node(value: "c")
let d = Node(value: "d")
let e = Node(value: "e")
let f = Node(value: "f")

// Add neighbors to the nodes
a.neighbors = [b, c]
b.neighbors = [a,d,e]
c.neighbors = [a,f]
d.neighbors = [b]
e.neighbors = [b]
f.neighbors = [c]

// result
let bfsResult = Algorithm.shared.bfs(startNode: a)//["a", "b", "c", "d", "e", "f"]
print(bfsResult)
``` 

### We are planning to update Heap and other algorithms later.