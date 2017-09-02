//
//  ViewController.m
//  TestBlock
//
//  Created by FQL on 2017/9/2.
//  Copyright © 2017年 FQL. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor redColor];
    label.userInteractionEnabled = YES;
    [self.view addSubview:label];
    self.titleLabel = label;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jump)];
    [self.titleLabel addGestureRecognizer:tap];
    
    
}


- (void)jump {
    
    SecViewController *secVC = [[SecViewController alloc] init];

    /*!
     *  @brief 使用block的时候，不小心带了一个参数。。。 
        当没使用这个参数时，就没问题；  一旦使用了这个参数，直接崩溃。。
     */
    secVC.transferBlock = ^(NSString * title) {
        NSLog(@"====%@",title);
        //打开这句代码，直接崩溃
//        self.titleLabel.text = title;
    };
    [self.navigationController pushViewController:secVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
