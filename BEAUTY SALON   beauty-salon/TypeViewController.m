//
//  TypeViewController.m
//  BEAUTY SALON   beauty-salon
//
//  Created by zc on 914-4-9.
//  Copyright (c) 2014年 zc. All rights reserved.
//

#import "TypeViewController.h"

@interface TypeViewController ()

@end

@implementation TypeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//点击其中一个，进入大图
-(void)handletap:(id)obj{
    
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    bigImageViewController *VC = [storyboard instantiateViewControllerWithIdentifier:@"bigImageVC"];
    [self.navigationController pushViewController:VC animated:YES];
}

- (IBAction)demoPush:(id)sender {
    
    [self handletap:sender];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
