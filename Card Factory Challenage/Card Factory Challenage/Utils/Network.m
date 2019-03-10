//
//  Network.m
//  Card Factory Challenage
//
//  Created by Reza Dehnavi on 3/11/19.
//  Copyright © 2019 Reza Dehnavi. All rights reserved.
//

#import "Network.h"
#import "AFNetworking.h"
#import "CardDTO.h"
//#define URL = @""

@implementation Network
static NSString *URL = @"http://static.pushe.co/challenge/json";

+ (void)getDataFromNetwork {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager GET:URL
      parameters:nil
         success:^(NSURLSessionDataTask *task, id responseObject) {
             
             NSDictionary *jsonDict = responseObject;
             NSLog(@"JSON: %@", responseObject);
             NSArray *cardsJSON = [jsonDict objectForKey:@"cards"];
             
             NSMutableArray *cards = [[NSMutableArray alloc] init];
             CardDTO *card = [[CardDTO alloc] init];
             
             [cardsJSON enumerateObjectsUsingBlock:^(id obj,NSUInteger idx, BOOL *stop){
                 card.title = [obj objectForKey:@"title"];
                 card.tag = [obj objectForKey:@"tag"];
                 NSLog(@"CARD_TITLE: %@", card.title);
                 NSLog(@"CARD_TAG: %@", card.tag);
                 [cards addObject:card];
             }];
             
         } failure:^(NSURLSessionDataTask *task, NSError *error) {
             NSLog(@"Problem to connect");
         }];
}
@end
