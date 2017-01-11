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
    
    [self refreshPhotos];
}

-(void)refreshPhotos{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:@"https://swapi.co/api/people"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSString *responseText = [[NSString alloc] initWithContentsOfURL:location encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"Response: %@", responseText);
    }];
    
    [task resume];
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
