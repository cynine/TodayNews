//
//  GTDeleteCellView.h
//  TodayNews
//
//  Created by leizhangjie on 11/1/19.
//  Copyright © 2019 cynine. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 删除按钮点击出现的浮层
@interface GTDeleteCellView : UIView


/// 点击出现删除cell确认浮层
/// @param point 点击的位置
/// @param clickBlock 点击后的操作
- (void)showDeleteViewFromPoint: (CGPoint)point clickBlock: (dispatch_block_t) clickBlock ;

@end

NS_ASSUME_NONNULL_END
