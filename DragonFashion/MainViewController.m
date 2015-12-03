//
//  MainViewController.m
//  DragonFashion
//
//  Created by Michael Moss on 10/26/15.
//  Copyright © 2015 Mike. All rights reserved.
//

#import "MainViewController.h"
#import "Dragon.h"
#import "DetailViewController.h"

@interface MainViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *dragons;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dragons = [NSMutableArray new];
    
    Dragon *dragon = [[Dragon alloc] initWithName:@"Hungarian Horntail" withCloth:@"Jammies"];
    [self.dragons addObject:dragon];
    
    Dragon *dragon2 = [[Dragon alloc] initWithName: @"GoT Dragon" withCloth:@"Jordans"];
    [self.dragons addObject:dragon2];

    Dragon *dragon3 = [[Dragon alloc] initWithName:@"Swedish Shortsnout" withCloth:@"FuBu"];
    [self.dragons addObject:dragon3];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dragons.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DragInCell"];
    Dragon *dragon = self.dragons[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"Hello! %@", dragon.fullName];
    cell.detailTextLabel.text = dragon.sigCloth;
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *vc = [segue destinationViewController];
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    vc.dragon = self.dragons[path.row];
}

@end
