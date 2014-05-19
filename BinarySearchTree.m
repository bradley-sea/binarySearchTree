//
//  BinarySearchTree.m
//  BST
//
//  Created by Bradley Johnson on 5/19/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

#import "BinarySearchTree.h"


@interface BinarySearchTree()

@property (strong,nonatomic) Node *root;

@end

@implementation BinarySearchTree


-(void)addValue:(NSInteger)value
{
    Node *newNode = [Node nodeWithValue:value];
    
    if (!self.root)
    {
        self.root = newNode;
        return;
    }
    else
    {
        [self.root addNode:newNode];
    }
}

-(Node *)findObjectForValue:(NSInteger)value
{
    Node *searchNode = [self findObjectForValue:value onNode:self.root];
    
    return searchNode;
}

-(Node *)findObjectForValue:(NSInteger)value onNode:(Node *)node
{
            if (node)
            {
                if (value == node.value)
                {
                    return node;
                }
                
                if (value < node.value)
                {
                    return [self findObjectForValue:value onNode:node.leftChild];
                }
                else if (value > node.value)
                {
                    return [self findObjectForValue:value onNode:node.rightChild];
                }
                    
            }
    
    
    return node;
}

@end
