//: List Playground - noun: a place where people can play... with lists

import UIKit

print("--------- WELCOME TO CODING INTERVIEW PALOOZA ---------")

print("Q: Create a linked list")
print("INPUT :  [30,25,20,15,10,5]")
print("OUTPUT:  30->25->20->15->10->5")

var inputValues: [Int] = [30,25,20,15,10,5]

class Node {
    var previous: Node?
    var next: Node?
    var value: Int
    
    init(value: Int) {
      self.value = value
    }
}

class LinkedList {
    public var head: Node?
    public var tail: Node?

    public func isEmpty() -> Bool {
        return true
    }
    
    public var first: Node? {
        return head
    }

    public var last: Node? {
        return tail
    }

    public func count() -> Int {
        var count: Int = 0
        
        var node = head
        while node != nil {
            count = count + 1
            node = node!.next
        }

        return count
    }
    
    public func nodeAt(index: Int) -> Node {
        var count: Int = 0
        
        var node = head
        while count < index {
            node = node!.next
            count = count + 1
        }
        
        return node!
    }

    public func append(value: Int) {
        let newNode: Node = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        self.tail = newNode
    }

    public func appendFromArray(values: [Int]) {
        for item in values {
            self.append(value: item)
        }
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = ""
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += "->" }
        }
        return text
    }
}

let linkedList: LinkedList = LinkedList()
linkedList.appendFromArray(values: inputValues)
print(linkedList)
let node = linkedList.nodeAt(index: 5)
print(node.value)


print("\n")
print("Q: Reverse a linked list")
print("INPUT : 30->25->20->15->10->5")
print("OUTPUT: 5->10->15->20->25->30")
