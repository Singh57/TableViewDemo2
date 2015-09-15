//
//  CollectionViewController.h
//  TableViewDemo2
//
//  Created by Sukhvinder on 16/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "objectFeed.h"
@interface CollectionViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

{
    NSMutableArray *Items;
    IBOutlet UICollectionView *ItemsTable;
}

@end
