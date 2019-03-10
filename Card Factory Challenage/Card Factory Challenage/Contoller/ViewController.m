//
//  ViewController.m
//  Card Factory Challenage
//
//  Created by Reza Dehnavi on 3/10/19.
//  Copyright © 2019 Reza Dehnavi. All rights reserved.
//

#import "ViewController.h"
#import "Network.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)getData:(id)sender {
    [Network  getDataFromNetwork] ;
}

@end
