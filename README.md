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
let dfsResult = Algorithm.dfs(startNode: a)//["a", "b", "d", "e", "c", "f"]
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
let bfsResult = Algorithm.bfs(startNode: a)//["a", "b", "c", "d", "e", "f"]
print(bfsResult)
``` 
## **📝 Example of use with Heap Data Structure** 
``` swift
// Max Heap usage
var maxHeap = Heap<Int>(type: .maxHeap)
maxHeap.push(30)
maxHeap.push(20)
maxHeap.push(18)
maxHeap.push(9)
maxHeap.push(6)
maxHeap.push(50)

print("max Heap:", maxHeap) // Heap<Int>(elements: [50, 20, 30, 9, 6, 18], type: __lldb_expr_86.HeapType.maxHeap)

while !maxHeap.isEmpty {
    print(maxHeap.pop()!) // 50, 30, 20, 18, 9 ,6
}

// Min Heap usage
var minHeap = Heap<Int>(type: .minHeap)
minHeap.push(4)
minHeap.push(2)
minHeap.push(8)
minHeap.push(1)

print("min Heap",minHeap) // Heap<Int>(elements: [1, 2, 8, 4], type: __lldb_expr_88.HeapType.minHeap)

while !minHeap.isEmpty {
    print(minHeap.pop()!) // 1, 2, 4, 8
}
```
### We are planning to update other algorithms later.