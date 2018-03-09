//: Playground - noun: a place where people can play

import UIKit

print("--------- WELCOME TO CODING INTERVIEW PALOOZA ---------")

print("Q: Create a linked list")
print("INPUT :  [30,25,20,15,10,5]")
print("OUTPUT:  ->30->25->20->15->10->5")

var inputValues: [Int] = [30,25,20,15,10,5]

class Node {
    var leftNode: Node?
    var rightNode: Node?
    var value: Int
    
    init(left: Node?, right: Node?, value: Int) {
        self.leftNode = left
        self.rightNode = right
        self.value = value
    }
}

var value: Int = inputValues.popLast()!
var lastNode: Node?
while inputValues.count > 0 {
    value = inputValues.popLast()!
    
    let nextNode: Node = Node(left: nil, right: lastNode, value: value)
    
    if(lastNode != nil) {
        lastNode!.leftNode = nextNode
    }
    
    lastNode = nextNode
}

let head: Node = lastNode!

var nextNode: Node? = head
while nextNode != nil {
    let terminator: String = nextNode!.rightNode != nil ? "->" : ""
    print(nextNode!.value, terminator: terminator)
    
    nextNode = nextNode!.rightNode
}

print("")
print("Q: Reverse a linked list")
print("INPUT : ->30->25->20->15->10->5")
print("OUTPUT: ->5->10->15->20->25->30")


