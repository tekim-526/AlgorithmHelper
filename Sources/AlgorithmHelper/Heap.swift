//
//  Heap.swift
//  
//
//  Created by Kim TaeSoo on 2023/03/08.
//

import Foundation

public enum HeapType {
    case maxHeap, minHeap
}

public struct Heap<Element: Comparable> {
    private var elements: [Element] = []
    private var type: HeapType

    public var count: Int {
        return elements.count
    }

    public var isEmpty: Bool {
        return elements.isEmpty
    }

    public init(type: HeapType) {
        self.type = type
    }

    mutating public func push(_ element: Element) {
        elements.append(element)
        moveUp(from: elements.count - 1)
    }
    
    @discardableResult
    mutating public func pop() -> Element? {
        guard !isEmpty else { return nil }
        let lastIndex = elements.count - 1
        elements.swapAt(0, lastIndex)
        let removed = elements.removeLast()
        if !isEmpty {
            moveDown(from: 0, upTo: lastIndex - 1)
        }
        return removed
    }

    private mutating func moveDown(from index: Int, upTo lastIndex: Int) {
        var parent = index
        while true {
            let leftChild = 2 * parent + 1
            let rightChild = leftChild + 1
            var candidate = parent
            if leftChild <= lastIndex && compare(elements[leftChild], elements[candidate]) {
                candidate = leftChild
            }
            if rightChild <= lastIndex && compare(elements[rightChild], elements[candidate]) {
                candidate = rightChild
            }
            if candidate == parent {
                return
            }
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }

    private mutating func moveUp(from index: Int) {
        var child = index
        var parent = parentIndex(ofChildAt: child)
        while child > 0 && compare(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = parentIndex(ofChildAt: child)
        }
    }

    private func parentIndex(ofChildAt index: Int) -> Int {
        return (index - 1) / 2
    }

    private func compare(_ lhs: Element, _ rhs: Element) -> Bool {
        switch type {
        case .maxHeap:
            return lhs > rhs
        case .minHeap:
            return lhs < rhs
        }
    }
}

