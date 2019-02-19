//
//  ViewController.m
//  BorderLine
//
//  Created by le tong on 2019/2/19.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "ViewController.h"
#import "UIView+BorderLine.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.testView.backgroundColor = [UIColor orangeColor];
    [self.testView addBorderLine:1.0f color:[UIColor greenColor] borderLines:UIViewBorderLineLeft | UIViewBorderLineBottom];
    [self.view addSubview:self.testView];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
