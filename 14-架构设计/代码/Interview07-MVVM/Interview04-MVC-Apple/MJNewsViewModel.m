//
//  MJNewsViewModel.m
//  Interview04-MVC-Apple
//
//  Created by MJ Lee on 2018/8/30.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJNewsViewModel.h"
#import "MJNews.h"

@implementation MJNewsViewModel

- (void)loadNewsData:(void (^)(NSArray *))completion
{
    if (!completion) return;
    
    NSMutableArray *newsData = [NSMutableArray array];
    for (int i = 0; i < 20; i++) {
        // 发送网络请求、字典转模型
        MJNews *news = [[MJNews alloc] init];
        news.title = [NSString stringWithFormat:@"news-title-%d", i];
        news.content = [NSString stringWithFormat:@"news-content-%d", i];
        [newsData addObject:news];
    }
    
    completion(newsData);
}

@end
