//
//  MJNewsViewController.m
//  Interview04-MVC-Apple
//
//  Created by MJ Lee on 2018/7/17.
//  Copyright © 2018年 MJ Lee. All rights reserved.
//

#import "MJNewsViewController.h"
#import "MJNews.h"
#import "MJNewsViewModel.h"

@interface MJNewsViewController ()
@property (nonatomic, strong) MJNewsViewModel *newsVM;
@property (nonatomic, assign) NSArray *newsData;
@end

@implementation MJNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.newsVM = [[MJNewsViewModel alloc] init];
    [self.newsVM loadNewsData:^(NSArray *newsData) {
        self.newsData = newsData;
    }];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.newsData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell" forIndexPath:indexPath];
    
    MJNews *news = self.newsData[indexPath.row];
    
    cell.detailTextLabel.text = news.title;
    cell.textLabel.text = news.content;
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"1111");
}

@end
