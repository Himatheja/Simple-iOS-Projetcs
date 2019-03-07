//
//  FruitsViewController.h
//  TableView[Obj-C]
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FruitsViewController : UIViewController
{
    NSArray *fruitsArray;
}

@property (weak, nonatomic) IBOutlet UITableView *fruitsTableView;

@end

