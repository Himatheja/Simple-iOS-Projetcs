//
//  ViewController+UICollectionView.m
//  APIIntegration
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import "ViewController+UICollectionView.h"
#import "collectionViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation ViewController (UICollectionView)

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    collectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionViewCell" forIndexPath:indexPath];
    NSString *name = marvelArray[indexPath.row].name;
    cell.nameLabel.text = name;
    NSString *imageUrl = marvelArray[indexPath.row].imageurl;
    [cell.imageView sd_setImageWithURL: [NSURL URLWithString:imageUrl]];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [marvelArray count];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CGRectGetWidth(collectionView.frame), CGRectGetHeight(collectionView.frame));
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0.0;
}

@end
