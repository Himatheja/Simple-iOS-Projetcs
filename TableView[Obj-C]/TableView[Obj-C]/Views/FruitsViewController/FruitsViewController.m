//
//  FruitsViewController.m
//  TableView[Obj-C]
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import "FruitsViewController.h"

@interface FruitsViewController ()

@end

@implementation FruitsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    fruitsArray = [NSArray arrayWithObjects:@"Apple",@"Orange",@"PineApple",@"Pomegranate",@"Grapes",@"Watermelon",@"Guava",@"Strawberry", nil];
    [self setupTableView];
}

- (void)setupTableView {
    //    [fruitsTableView delegate]
    [_fruitsTableView.delegate self];
    [_fruitsTableView.dataSource self];
    [_fruitsTableView registerNib:[UINib nibWithNibName:@"FruitsTableViewCell" bundle:nil] forCellReuseIdentifier:@"FruitsTableViewCell"];
    [_fruitsTableView reloadData];
}

@end
