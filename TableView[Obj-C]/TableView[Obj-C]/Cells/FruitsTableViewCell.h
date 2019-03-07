//
//  FruitsTableViewCell.h
//  TableView[Obj-C]
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FruitsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *fruitLabel;
@property (weak, nonatomic) IBOutlet UIImageView *fruitImage;

@end

NS_ASSUME_NONNULL_END
