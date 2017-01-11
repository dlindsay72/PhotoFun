//
//  PhotoCollectionVC.m
//  PhotoFun
//
//  Created by Dan Lindsay on 2017-01-10.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

#import "PhotoCollectionVC.h"
#import "PhotoCell.h"

//@interface PhotoCollectionVC ()
//
//@end

@implementation PhotoCollectionVC



- (void)viewDidLoad {
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.topItem.title = @"PhotoFun";
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 49;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *) collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoFunCell" forIndexPath:indexPath];
    cell.photoView.image = [UIImage imageNamed:@"tallBike"];
    return cell;
}


@end
