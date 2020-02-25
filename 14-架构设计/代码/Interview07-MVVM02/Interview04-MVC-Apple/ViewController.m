//
//  ViewController.m
//  Interview04-MVC-Apple
//
//  Created by MJ Lee on 2018/7/17.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "ViewController.h"
#import "MJAppView.h"
#import "MJAppViewModel.h"

@interface ViewController () <MJAppViewDelegate>
@property (nonatomic, strong) MJAppViewModel *appVM;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建viewModel
    self.appVM = [[MJAppViewModel alloc] init];
    [self.appVM loadApp];
    
    // 创建view
    MJAppView *appView = [[MJAppView alloc] init];
    appView.frame = CGRectMake(100, 100, 100, 150);
    appView.delegate = self;
    [self.view addSubview:appView];
    
    // 设置数据到view上
    appView.nameLabel.text = self.appVM.name;
    appView.iconView.image = [UIImage imageNamed:self.appVM.image];
}

#pragma mark - MJAppViewDelegate
- (void)appViewDidClick:(MJAppView *)appView
{
    NSLog(@"控制器监听到了appView的点击");
}

@end
