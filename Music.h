//
//  Music.h
//  Music
//
//  Created by ShenzhenGuo on 13-11-6.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Music : NSObject{

    NSString *name;
}
@property(retain,nonatomic)NSString *name;
-(id)initWithName:(NSString *)_name;
@end
