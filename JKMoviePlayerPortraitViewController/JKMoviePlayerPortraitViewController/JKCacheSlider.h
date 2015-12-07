//
//  JKCacheSlider.h
//  moviePlayer
//
//  Created by emerys on 15/12/6.
//  Copyright © 2015年 Emerys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JKCacheSlider : UISlider

// the cacheValue is between 0 and 1.0
@property (nonatomic,assign) double cacheValue;


-(void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor middleTrackTintColor:(UIColor *)middleTrackTintColor maximumTrackTintColor:(UIColor *)maximumTrackTintColor;


@end
