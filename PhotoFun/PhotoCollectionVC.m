//
//  PhotoCollectionVC.m
//  PhotoFun
//
//  Created by Dan Lindsay on 2017-01-10.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

#import "PhotoCollectionVC.h"

//@interface PhotoCollectionVC ()
//
//@end

@implementation PhotoCollectionVC



- (void)viewDidLoad {
    self.collectionView.backgroundColor = [UIColor whiteColor];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 49;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *) collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoFunCell" forIndexPath:indexPath];
    
    return cell;
}


@end
