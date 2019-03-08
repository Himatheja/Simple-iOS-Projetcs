//
//  ViewController.h
//  APIIntegration
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"

@interface ViewController : UIViewController

{
    NSMutableArray <Datum *> *marvelArray;
}

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

