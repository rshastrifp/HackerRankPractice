//
//  InsertNodeAtPosition.swift
//  HackerRankPractice
//
//  Created by Ronak Shastri on 2019-09-19.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import Foundation

final class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?
    
    public init(nodeData: Int) {
        self.data = nodeData
    }
}

final class SinglyLinkedList {
    var head: SinglyLinkedListNode?
    var tail: SinglyLinkedListNode?
    
    public init() {}
    
    public func insertNode(nodeData: Int) {
        self.insertNode(node: SinglyLinkedListNode(nodeData: nodeData))
    }
    
    private func insertNode(node: SinglyLinkedListNode) {
        if let tail = tail {
            tail.next = node
        } else {
            head = node
        }
        
        tail = node
    }
}

func printSinglyLinkedList(head: SinglyLinkedListNode?, sep: String, fileHandle: FileHandle) {
    var node = head
    
    while node != nil {
        fileHandle.write(String(node!.data).data(using: .utf8)!)
        
        node = node!.next
        
        if node != nil {
            fileHandle.write(sep.data(using: .utf8)!)
        }
    }
}

func insertNodeAtPosition(head: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    
    let headVar = head
    let newNode = SinglyLinkedListNode(nodeData: data)
    
    var previous : SinglyLinkedListNode? = nil
    var next = headVar
    
    var positionCounter = 0
    
    while (positionCounter != position) {
        positionCounter += 1
        previous = next
        next = next?.next
    }
    
    previous?.next = newNode
    newNode.next = next
    
    if previous == nil {
        return newNode
    }
    else {
        return headVar
    }
}

func insertNodeAtPosition2(head: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    
    var headVar = head
    let newNode = SinglyLinkedListNode(nodeData: data)
    
    //for first
    if position == 0 {
        newNode.next = headVar?.next
        headVar = newNode
        return headVar
    }
    
    //For last
    var lastObjectPosition = 0
    var lastObject = headVar
    var secondLastObject : SinglyLinkedListNode? = nil
    
    while lastObject?.next != nil {
        lastObjectPosition += 1
        secondLastObject = lastObject
        lastObject = lastObject?.next
    }
    
    if (lastObjectPosition == position) {
        newNode.next = lastObject
        secondLastObject?.next = newNode
        return headVar
    }
    
    //For middle
    var p = 1
    var pObject = headVar
    while p != position {
        p += 1
        pObject = pObject?.next
    }
    
    let storeNode = pObject?.next
    pObject?.next = newNode
    newNode.next = storeNode
    
    return headVar
}



