//
//  MissionCollectionViewDataSource.m
//  Xlaunch
//
//  Created by Hoan Tran on 8/14/18.
//  Copyright © 2018 Hoan Tran. All rights reserved.
//

#import "MissionCollectionViewDataSource.h"
#import "MissionCell.h"

NSString *const MISSION_CELL_ID = @"MissionCell";


@implementation MissionCollectionViewDataSource

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MissionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:MISSION_CELL_ID forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[MissionCell alloc]initWithFrame:CGRectZero];
    }
    
    if (    self.missionInfoProvider != nil &&
            [self.missionInfoProvider respondsToSelector:@selector(launchInfoFor:)] &&
            [self.missionInfoProvider respondsToSelector:@selector(iconFileNameFor:)]) {
        LaunchModel *launch = [self.missionInfoProvider launchInfoFor:indexPath.item];
        NSString *fileName = [self.missionInfoProvider iconFileNameFor:indexPath.item];
        if (launch != nil && fileName != nil && fileName.length > 0) {
            [cell setLaunchInfo:launch iconFile:fileName];
        }
    }
    
    return cell;
}


- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (self.missionInfoProvider != nil && [self.missionInfoProvider respondsToSelector:@selector(rowCount)] ) {
        return [self.missionInfoProvider rowCount];
    } else {
        return 0;
    }
}


@end
