//
//  BinaryNode.swift
//  iOSBinaryTree
//
//  Created by Tim Hepner on 9/3/19.
//  Copyright © 2019 Plume Design. All rights reserved.
//

import Foundation


class BinaryNode {
    
    var parent: BinaryNode?
    var left: BinaryNode?
    var right: BinaryNode?
    
    init() {
        parent = nil
    }
    
    /**
     * Find the root node of the binary tree to which this node belongs.
     * (A root node is one which has no parent)
     * @return The root node or self if the node is a root.
     */
    func getRoot() -> BinaryNode? {
        preconditionFailure("This method must be overridden")
    }
    
    /**
     * Counts the children of this node using a recursive algorithm.
     * @return The number of descendants of this node.
     */
    func countChildrenWithRecursion() -> Int {
        preconditionFailure("This method must be overridden")
    }
    
    /**
     * Counts the children of this node using a non-recursive algorithm.
     * @return The number of descendants of this node.
     */
    func countChildrenWithoutRecursion() -> Int {
        preconditionFailure("This method must be overridden")
    }
    
    func getRight() -> BinaryNode? {
        return right
    }
    
    func setRight(right: BinaryNode?) {
        self.right = right;
        right?.setParent(parent: self);
    }
    
    func getLeft() -> BinaryNode? {
        return left
    }
    
    func setLeft(left: BinaryNode?) {
        self.left = left
        left?.setParent(parent: self)
    }
    
    func getParent() -> BinaryNode? {
        return parent
    }
    
    func setParent(parent: BinaryNode) {
        self.parent = parent
    }
}
