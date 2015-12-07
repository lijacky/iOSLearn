//
//  JKCacheSlider.m
//  moviePlayer
//
//  Created by emerys on 15/12/6.
//  Copyright © 2015年 Emerys. All rights reserved.
//

#import "JKCacheSlider.h"

#define OFFSET 2

@interface JKCacheSlider()

@property (nonatomic,strong) UIProgressView *middleProgress;

@end

@implementation JKCacheSlider

-(UIProgressView *)middleProgress{
    if (!_middleProgress) {
        CGRect frame = self.bounds;
        frame.origin.x += OFFSET;
        frame.size.width -= OFFSET * 2;
        _middleProgress = [[UIProgressView alloc] initWithFrame:frame];
        _middleProgress.center = self.center;
        _middleProgress.trackTintColor = [UIColor clearColor];
        _middleProgress.progressTintColor = [UIColor clearColor];
        _middleProgress.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return _middleProgress;
}

-(void)loadSubView{
    self.backgroundColor = [UIColor clearColor];
    [self addSubview:self.middleProgress];
    [self sendSubviewToBack:self.middleProgress];
}

-(void)setCacheValue:(double)cacheValue{
    _cacheValue = cacheValue;
    self.middleProgress.progress = cacheValue;
}



-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self loadSubView];
        self.cacheValue = 0;
    }
    return self;
}

-(void)setMinimumTrackTintColor:(UIColor *)minimumTrackTintColor middleTrackTintColor:(UIColor *)middleTrackTintColor maximumTrackTintColor:(UIColor *)maximumTrackTintColor{
    self.minimumTrackTintColor = minimumTrackTintColor;
    self.maximumTrackTintColor = [UIColor clearColor];
    self.middleProgress.trackTintColor = maximumTrackTintColor;
    self.middleProgress.progressTintColor = middleTrackTintColor;
}


@end
