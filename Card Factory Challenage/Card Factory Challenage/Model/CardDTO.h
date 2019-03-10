//
//  CardDTO.h
//  Card Factory Challenage
//
//  Created by Reza Dehnavi on 3/10/19.
//  Copyright © 2019 Reza Dehnavi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CardDTO : NSObject
@property (nonnull,readwrite) NSInteger *code;
@property (readwrite) NSString *title;
@property (readwrite) NSString *desc;
@property (readwrite) NSString *tag;
@end

NS_ASSUME_NONNULL_END
