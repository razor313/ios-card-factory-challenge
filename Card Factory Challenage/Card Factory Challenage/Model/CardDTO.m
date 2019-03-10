//
//  CardDTO.m
//  Card Factory Challenage
//
//  Created by Reza Dehnavi on 3/10/19.
//  Copyright © 2019 Reza Dehnavi. All rights reserved.
//

#import "CardDTO.h"

@implementation CardDTO
    
- (CardDTO *)initWith:(NSInteger *)code andTitle:(NSString *)title andDescripsion:(NSString *)descripsion andTag:(NSString *)tag {
    self = [super init];
    if (self != nil) {
        self.code = code;
        self.title = title;
        self.desc = descripsion;
        self.tag = tag;
    }
    return self;
}

@end
