//
//  Music.m
//  Music
//
//  Created by ShenzhenGuo on 13-11-6.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import "Music.h"

@implementation Music
@synthesize name;


-(id)initWithName:(NSString *)_name
{
    if (self=[super init]) {
        self.name=_name;
    }
    return self;
}
@end
