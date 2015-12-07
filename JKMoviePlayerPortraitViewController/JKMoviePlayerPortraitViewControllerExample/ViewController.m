//
//  ViewController.m
//  JKMoviePlayerPortraitViewControllerExample
//
//  Created by emerys on 15/12/7.
//  Copyright © 2015年 Emerys. All rights reserved.
//

#import "ViewController.h"
#import "JKMoviePlayerPortraitViewController.h"

#define URL_STR @"http://baobab.cdn.wandoujia.com/1448696862701c.MP4";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    // 以下示例代码
    
    JKMoviePlayerPortraitViewController *mp = [[JKMoviePlayerPortraitViewController alloc] init];
    mp.URLString = URL_STR;
    mp.movieName = @"Adventure of a Lifetime";
    
    [self presentViewController:mp animated:YES completion:nil];
}

@end
