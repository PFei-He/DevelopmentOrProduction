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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.label.text = [[self systemInfoForName:@"HOST_URL"] stringByReplacingOccurrencesOfString:@"\\" withString:@""];
    
    NSLog(@"current compiled version: %@", version);
    
#if DEVELOPMENT
    NSLog(@"If the current compiled version is development, print this message.");
    NSLog(@"So can do something only for debug, such as print run record.");
#endif
}


- (NSString *)systemInfoForName:(NSString *)name
{
    NSDictionary *dictionary = [NSBundle mainBundle].infoDictionary;
    return dictionary[name];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
