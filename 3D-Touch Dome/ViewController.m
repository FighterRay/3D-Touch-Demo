//
//  ViewController.m
//  3D-Touch Dome
//
//  Created by 张润峰 on 15/12/2.
//  Copyright © 2015年 张润峰. All rights reserved.
//

#import "ViewController.h"
#import "TextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint) point
{
    TextViewController *childVC = [[TextViewController alloc] init];
    childVC.preferredContentSize = CGSizeMake(0, 300);
    
    CGRect rect = CGRectMake(10, point.y - 10, self.view.frame.size.width - 20,20);
    context.sourceRect = rect;
    return childVC;
}
- (void)previewContext:(id<UIViewControllerPreviewing>)context commitViewController:(UIViewController*)vc
{
    [self showViewController:vc sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
