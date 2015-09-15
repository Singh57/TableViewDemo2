//
//  CollectionViewCell.m
//  TableViewDemo2
//
//  Created by Sukhvinder on 16/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

-(void)LoadCell:(objectFeed*)FeedItem{
    [txtText setText:FeedItem.Text];
    [imgPicture setImage:[UIImage imageNamed:FeedItem.ImagePath]];
    
    txtText.hidden = YES;
}
-(IBAction)unhideText:(id)sender;
{
    txtText.hidden = NO;
}
-(IBAction)hide:(id)sender
{
    txtText.hidden = YES;
}


@end
