//
//  Dragon.m
//  DragonFashion
//
//  Created by Michael Moss on 10/26/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon
- (instancetype)initWithName: (NSString *)name withCloth:(NSString *)cloth{
    self = [super init];
    if(self){
        self.fullName = name;
        self.sigCloth = cloth;
    }
    return self;
}
@end
