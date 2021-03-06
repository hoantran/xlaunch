//
//  LaunchViewDataSource.h
//  Xlaunch
//
//  Created by Hoan Tran on 8/5/18.
//  Copyright © 2018 Hoan Tran. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>
#import "MissionPopController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LaunchViewDataSource : NSObject <UITableViewDataSource, MissionInfoProvider>
- (void) updateLaunches: (NSArray *)launches;
@end

NS_ASSUME_NONNULL_END
