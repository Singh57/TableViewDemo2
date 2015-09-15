//
//  CollectionViewController.m
//  TableViewDemo2
//
//  Created by Sukhvinder on 16/09/2015.
//  Copyright (c) 2015 Booyah!. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Items = [[NSMutableArray alloc]init];
    [ItemsTable setDataSource:self];
    [ItemsTable setDelegate:self];
    
    objectFeed *Item1 = [[objectFeed alloc]init];
    [Item1 setText:@ "One of the more interesting constructions in Darwin during World War II are the oil storage tunnels located near the Darwin Wharf Precinct. Originally eight oil tunnels were planned, but only five were actually constructed. Today, two of these oil storage tunnels are open for viewing. The tunnels feature a collection of photographs of Darwin during World War II and the men and women that served in the Northern Territory. An experienced guide will take you through the tunnels with informative commentary, and books and souvenirs are available."];
    [Item1 setImagePath:@"ww21tunnel.jpg" ];
    
    
    
    objectFeed *Item2 = [[objectFeed alloc]init];
    [Item2 setText:@ "Step back in time and explore Northern Territory heritage. The Australian Aviation Heritage Centre, located in Winnellie, Darwin, houses an impressive collection of the Territory's aviation history and reminds us of Darwin's frontier role in World War II. A massive B52 Bomber dwarfs other exhibits, including Mirage and Sabre jets, a Spitfire replica, Wessex and Huey Cobra helicopters. Other exhibits include engines and armament as well as many photographs of Darwin at war, pioneer flights and record breakers. The development of the jet age is also depicted through displays and photographs. To fully appreciate all the centre has to offer, allow yourself at least an hour and a half. Take advantage of the guided tours, video presentation and range of souvenirs."];
    
    
    [Item2 setImagePath:@"ww22aviation.jpg"];
    
    objectFeed *Item3 = [[objectFeed alloc]init];
    [Item3 setText:@"World War II Heritage and Historic Tours close to Darwin, 100km on the Stuart Highway. Available Tours to Pell wartime Airstrip that was used to bring aircraft within the camp and place them along various revetments such as the well developed road system and drainage. The Pell wartime airstrip is a significant and interesting landmark of 16 hectares, named after Major Floyd Pell who was killed when the Japanese strafed Darwin Airport on February 19, 1942. The area is close to Batchelor Museum and the Batchelor Walk.ww"];
    [Item3 setImagePath:@"ww23.jpg"];
    
    objectFeed *Item4 = [[objectFeed alloc]init];
    [Item4 setText:@"The Adelaide River Railway Siding and Railway Bridge, located on the Stuart Highway, were constructed as part of the first leg of the North Australia Railway, or NAR, which operated from 1888 until 1976. The Adelaide River Railway Siding was the first main station complex on the North Australian Railway from Darwin and Pine Creek. During World War II it was of major significance as Adelaide River was an important military centre, with the main hospital situated north of the township along with a number of Australian and Allied bases in the area."];
    [Item4 setImagePath:@"ww24.jpg"];
    
    objectFeed *Item5 = [[objectFeed alloc]init];
    [Item5 setText:@"The Adelaide River War Cemetery is a sobering reminder of the impact World War II had on this part of Australia. There are 434 military burials in total and the adjoining Civil Cemetery honours 63 civilians including the nine post office workers who were killed in the 19 February 1942 bombing of Darwin. Also visit the Memorial to the Missing, where 292 service personnel are remembered, who lost their lives in Timor and other northern regions."];
    [Item5 setImagePath:@"ww25adelaide.jpg"];
    
    [Items addObject:Item1];
    [Items addObject:Item2];
    [Items addObject:Item3];
    [Items addObject:Item4];
    [Items addObject:Item5];
    
    [ItemsTable reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return  Items.count;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    objectFeed *buf = (objectFeed*)Items[indexPath.row ];
    
    
    CollectionViewCell *cell = (CollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    
    [cell LoadCell:buf];
    return  cell;
}

@end