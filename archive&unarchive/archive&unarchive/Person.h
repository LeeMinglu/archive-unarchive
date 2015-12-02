//
//  Person.h
//  archive&unarchive
//
//  Created by 李明禄 on 15/12/2.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger age;

@end
