//
//  Dragon.h
//  DragonFashion
//
//  Created by Michael Moss on 10/26/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject
@property NSString *fullName;
@property NSString *sigCloth;
- (instancetype)initWithName: (NSString *)name withCloth: (NSString *)cloth;
@end
