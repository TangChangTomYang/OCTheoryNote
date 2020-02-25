//
//  MJAppViewModel.m
//  Interview04-MVC-Apple
//
//  Created by MJ Lee on 2018/8/30.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJAppViewModel.h"
#import "MJApp.h"

@implementation MJAppViewModel

- (void)loadApp
{
    // 加载模型数据
    MJApp *app = [[MJApp alloc] init];
    app.name = @"QQ";
    app.image = @"QQ";
    
    self.name = [NSString stringWithFormat:@"000-%@", app.name];
    self.image = app.image;
}

@end
