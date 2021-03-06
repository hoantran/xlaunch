//
//  DateView.h
//  Xlaunch
//
//  Created by Hoan Tran on 8/6/18.
//  Copyright © 2018 Hoan Tran. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateView : UIView<UITextFieldDelegate>
-(void)setTitle:(NSString *)title;
-(NSString*)getDate;
-(void)setDate:(NSString*)date;

@end

NS_ASSUME_NONNULL_END
