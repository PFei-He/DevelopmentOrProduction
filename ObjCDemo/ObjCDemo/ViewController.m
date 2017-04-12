//
//  ViewController.m
//  ObjCDemo
//
//  Created by Fay on 2017/4/12.
//  Copyright © 2017年 Fay. All rights reserved.
//

#import "ViewController.h"
#import "Macros.h"

@interface ViewController ()
    
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = version;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
