//
//  Node.h
//  BST
//
//  Created by Bradley Johnson on 5/19/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

+(id)nodeWithValue:(NSInteger)value;

-(void)addNode:(Node*)newNode;

@property (nonatomic) NSInteger value;

@property (strong,nonatomic) Node *leftChild;
@property (strong,nonatomic) Node *rightChild;



@end
