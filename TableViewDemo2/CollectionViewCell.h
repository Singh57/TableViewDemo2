//
//  CollectionViewCell.h
//  TableViewDemo2
//
//  Created by Sukhvinder on 16/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "objectFeed.h"
@interface CollectionViewCell : UICollectionViewCell

{
    IBOutlet UIImageView *imgPicture;
    IBOutlet UITextView *txtText;
    
    
}
-(void)LoadCell:(objectFeed*)Number;

-(IBAction)unhideText:(id)sender;
-(IBAction)hide:(id)sender;
@end
