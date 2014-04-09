//
//  ViewController.m
//  BEAUTY SALON   beauty-salon
//
//  Created by zc on 814-4-8.
//  Copyright (c) 2014年 zc. All rights reserved.
//

#import "IndexViewController.h"
#import "firstVCViewController.h"
@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)musicPlayAndPause:(UITapGestureRecognizer *)sender {
    
}

- (IBAction)goNext:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    firstVCViewController *VC = [storyboard instantiateViewControllerWithIdentifier:@"firstVC"];
    [self.navigationController pushViewController:VC animated:YES];
}


@end
