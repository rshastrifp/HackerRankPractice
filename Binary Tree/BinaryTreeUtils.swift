//
//  File.swift
//  iOSBinaryTree
//
//  Created by Tim Hepner on 9/4/19.
//  Copyright © 2019 Plume Design. All rights reserved.
//

import Foundation

/**
 * Oh hi there cheater,
 * STOP LOOKING AT ME!!!!
 */
class BinaryTreeUtils {
    
    /**
     * Generate a binary tree of arbitrary size.
     * @param depth Depth of the tree to be generated
     */
    static func generateTree(root: BinaryNode?, depth: Int) {
        if (depth > 1) {
            root?.setLeft(left: MyBinaryNode())
            root?.setRight(right: MyBinaryNode())
            generateTree(root: root?.left, depth: depth - 1)
            generateTree(root: root?.right, depth: depth - 1)
        }
    }
    
    static func visitAllNodes(root: BinaryNode?, visitor: NodeVisitor) {
        visitor.visit(node: root)
        if (root?.left != nil) {
            visitor.visit(node: root?.left)
            visitAllNodes(root: root?.left, visitor: visitor)
        }
        
        if (root?.right != nil) {
            visitor.visit(node: root?.right)
            visitAllNodes(root: root?.right, visitor: visitor)
        }
    }
}

protocol NodeVisitor {
    func visit(node: BinaryNode?)
}
