//
//  BinarySearchTree.h
//  BST
//
//  Created by Bradley Johnson on 5/19/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface BinarySearchTree : NSObject


-(void)addValue:(NSInteger)value;

-(Node *)findObjectForValue:(NSInteger)value;


@end
