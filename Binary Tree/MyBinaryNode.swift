//
//  MyBinaryNode.swift
//  iOSBinaryTree
//
//  Created by Tim Hepner on 9/3/19.
//  Copyright © 2019 Plume Design. All rights reserved.
//

import Foundation

class MyBinaryNode : BinaryNode {
     
    /**
     * Find the root node of the binary tree to which this node belongs.
     * (A root node is one which has no parent)
     * @return The root node or self if the node is a root.
     */
    override func getRoot() -> BinaryNode? {
        var child: BinaryNode? = self
        while child != nil {
            if (child?.parent === child) {
                return child?.parent
            }
            child = child?.parent
        }
        return nil;
    }
     
    
    
    /**
     * Counts the children of this node using a recursive algorithm.
     * @return The number of descendants of this node.
     */
    override func countChildrenWithRecursion() -> Int {
        return 0;
    }
    
    
    
    /**
     * Counts the children of this node using a non-recursive algorithm.
     * @return The number of descendants of this node.
     */
    override func countChildrenWithoutRecursion() -> Int {
        return 0;
    }

}
