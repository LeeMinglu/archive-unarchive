//
//  Person.m
//  archive&unarchive
//
//  Created by 李明禄 on 15/12/2.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import "Person.h"

@implementation Person

/**
 *  编码器：将对象保存到磁盘之前，将对象转换成二进制数据
 *
 */
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:@"nameKey"];
    [aCoder encodeInteger:_age forKey:@"ageKey"];
    
}

/**
 *  解码器：读取归档的二进制文件后，转换成自定义对象
 *

 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if ( self = [super init]) {
        //key一定要和归档对应
        _name = [aDecoder decodeObjectForKey:@"nameKey"];
        _age = [aDecoder decodeIntegerForKey:@"ageKey"];
    }
    return self;
}

@end
