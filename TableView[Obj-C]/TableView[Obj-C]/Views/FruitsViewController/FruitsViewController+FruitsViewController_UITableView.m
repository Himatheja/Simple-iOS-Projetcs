//
//  FruitsViewController+FruitsViewController_UITableView.m
//  TableView[Obj-C]
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import "FruitsViewController+FruitsViewController_UITableView.h"
#import "FruitsTableViewCell.h"

@implementation FruitsViewController (FruitsViewController_UITableView)

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    //
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FruitsTableViewCell"];
    FruitsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FruitsTableViewCell"];
    cell.fruitLabel.text = fruitsArray[indexPath.row];
    UIImage *image = [UIImage imageNamed:@"apple.jpg"];
    cell.fruitImage.image = image;
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [fruitsArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [UIScreen mainScreen].bounds.size.height;
}

@end
