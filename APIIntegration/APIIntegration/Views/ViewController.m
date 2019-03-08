//
//  ViewController.m
//  APIIntegration
//
//  Created by Divum on 07/03/19.
//  Copyright © 2019 Divum. All rights reserved.
//

#import "ViewController.h"
#import "Data.h"
#import "collectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupCollectionView];
    [self apiCall];
    [_collectionView reloadData];
}

- (void)setupCollectionView {
    [_collectionView.delegate self];
    [_collectionView.dataSource self];
    [_collectionView registerNib:[UINib nibWithNibName:@"collectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"collectionViewCell"];
//    [_collectionView registerClass:[UICollectionViewCell ] forCellWithReuseIdentifier:]
    [self.view addSubview:_collectionView];
}

- (void)apiCall {
//    https://simplifiedcoding.net/demos/marvel/
    NSString *urlString = @"https://simplifiedcoding.net/demos/marvel/";
    NSURL *url = [NSURL URLWithString:urlString];
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"fetching data...");
        
        NSError *err;
        NSArray *marvelData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        if(err){
            NSLog(@"error : %@",err);
        }
        
        self->marvelArray = NSMutableArray.new;
        
        for(NSDictionary *data in marvelData){
            NSString *name = data[@"name"];
            NSString *imageUrl = data[@"imageurl"];
            Datum *marvel = Datum.new;
            marvel.name = name;
            marvel.imageurl = imageUrl;
            [self->marvelArray addObject:marvel];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self->_collectionView reloadData];
        });
        
    }] resume];
}


@end
