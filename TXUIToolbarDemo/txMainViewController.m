//
//  txMainViewController.m
//  TXUIToolbarDemo
//
//  Created by tingxuan.qhm on 13-12-8.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txMainViewController.h"

@interface txMainViewController ()

@end

@implementation txMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{   UIToolbar * toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolbar.barStyle = UIBarStyleBlackTranslucent;//设置toolbar的样式
    toolbar.translucent = YES;
    toolbar.tintColor = [UIColor redColor];
    //通过initWithTitle方式初始化
    UIBarButtonItem *buttonItem01 = [[UIBarButtonItem alloc]initWithTitle:@"首页" style:UIBarButtonItemStyleBordered target:self action:@selector(action)];
    //通过initWithImage的方式初始化
    UIBarButtonItem *buttonItem02 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"button"] style:UIBarButtonItemStyleDone target:self action:@selector(action)];
    //通过initWithBarButtonSystemItem的方式初始化
    UIBarButtonItem *buttonItem03 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(action)];
    //通过initWithCustomView的方式初始化
    UIBarButtonItem *buttonItem04 = [[UIBarButtonItem alloc]initWithCustomView:[[UILabel alloc]initWithFrame:CGRectMake(40, 20, 45, 10)]];
    
    NSMutableArray * array = [NSMutableArray arrayWithObjects:buttonItem01,buttonItem03,buttonItem04,nil];
    [toolbar setItems:array animated:YES];
    [self.view addSubview:toolbar];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)action
{
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"点击了barButton" message:@"点击了barButton" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
    [alert show];
}

@end
