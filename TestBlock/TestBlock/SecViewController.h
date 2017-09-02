//
//  SecViewController.h
//  TestBlock
//
//  Created by FQL on 2017/9/2.
//  Copyright © 2017年 FQL. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义一个block， 不带参数
typedef void(^transferBlock)();

@interface SecViewController : UIViewController

@property (nonatomic, copy) transferBlock transferBlock;

@end
