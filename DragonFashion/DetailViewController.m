//
//  DetailViewController.m
//  DragonFashion
//
//  Created by Michael Moss on 10/26/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextView *dragonName;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dragonName.text = [NSString stringWithFormat:@"Hello! My name is %@ and I like to wear %@", self.dragon.fullName, self.dragon.sigCloth];
}


@end
