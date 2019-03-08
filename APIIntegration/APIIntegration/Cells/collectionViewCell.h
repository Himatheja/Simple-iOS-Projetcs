//
//  collectionViewCell.h
//  APIIntegration
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface collectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;


@end

NS_ASSUME_NONNULL_END
