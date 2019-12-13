//
//  ViewController.m
//  RXStrangeXR
//
//  Created by xuzhijun on 2019/12/13.
//  Copyright © 2019 xuzhijun. All rights reserved.
//

#import "ViewController.h"
#import "RXStrangeXRViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 200, 44);
    [button setTitle:@"click me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    [self.view addSubview:button];
}

- (void)buttonTouchUpInside:(id)sender {
    RXStrangeXRViewController *vc = [RXStrangeXRViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
