//
//  MJAppViewModel.h
//  Interview04-MVC-Apple
//
//  Created by MJ Lee on 2018/8/30.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJAppViewModel : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *image;

- (void)loadApp;
@end
