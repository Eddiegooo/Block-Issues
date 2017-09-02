//
//  SecViewController.m
//  TestBlock
//
//  Created by FQL on 2017/9/2.
//  Copyright © 2017年 FQL. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@property (nonatomic, strong) UILabel *titlteLabel;

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.textColor = [UIColor blackColor];
    label.text = @"点我返回啊";
    label.userInteractionEnabled = YES;
    [self.view addSubview:label];
    self.titlteLabel = label;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(jump)];
    [self.titlteLabel addGestureRecognizer:tap];
    
    
}


- (void)jump {
    if (self.transferBlock) {
        /*!
         *  @brief 当我在这使用block的时候，误传了一个参数过去，就没问题
         *  问题点： 定义block没带参数，为什么能传参过去？？？
         */
//        self.transferBlock(self.titlteLabel.text);
        
        
        /*!
         *  @brief 没传参数过去，后面block再release模式下就崩溃了
         */
        self.transferBlock();
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
