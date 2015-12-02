//
//  ViewController.m
//  archive&unarchive
//
//  Created by 李明禄 on 15/12/2.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/luoriver/Desktop/luo.plist"];
    
    NSLog(@"%@, %tu", p.name, p.age);
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Person *p = [[Person alloc] init];
    p.name = @"老王";
    p.age = 11;
    
    [NSKeyedArchiver archiveRootObject:p toFile:@"/Users/luoriver/Desktop/luo.plist"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
