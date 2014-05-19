//
//  Node.m
//  BST
//
//  Created by Bradley Johnson on 5/19/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

#import "Node.h"

@implementation Node

+(id)nodeWithValue:(NSInteger)value
{
    Node *newNode = [Node new];
    newNode.value = value;
    
    return newNode;
}

-(void)addNode:(Node*)newNode
{
    if (newNode.value < self.value)
    {
        if (!self.leftChild)
        {
            self.leftChild = newNode;
            return;
        }
        else
        {
            [self.leftChild addNode:newNode];
        }
        
    }
    else
    {
        if (!self.rightChild)
        {
            self.rightChild = newNode;
        }
        else
        {
            [self.rightChild addNode:newNode];
        }
        
    }
}

@end
