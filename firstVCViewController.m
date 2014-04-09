//
//  firstVCViewController.m
//  BEAUTY SALON   beauty-salon
//
//  Created by zc on 914-4-9.
//  Copyright (c) 2014年 zc. All rights reserved.
//

#import "firstVCViewController.h"

@interface firstVCViewController ()<UIScrollViewDelegate>

@end

@implementation firstVCViewController

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
//    self.view.frame = CGRectMake(0, 0, 1024, 768);
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 1024, 768)];
    self.scrollView.contentSize = CGSizeMake(1024*2, 768);
    self.scrollView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.scrollView];
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled  =YES;
    
    [self setUp];
   
    
}

-(void)setUp{
    
    UIImageView *upImageView = [[UIImageView alloc]initWithFrame:CGRectMake(88, 80, 847, 317)];
    upImageView.image = [UIImage imageNamed:@"ad-02"];
    [self.scrollView addSubview:upImageView];
    
    //下面三个
    UIImageView *leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(88,768-80-248 , 248, 248)];
    leftImageView.image = [UIImage imageNamed:@"fuwu-01"];
    [self.scrollView addSubview:leftImageView];
    
    
    UIImageView *midleImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(leftImageView.frame)+52,768-80-248 , 248, 248)];
    midleImageView.image = [UIImage imageNamed:@"small-01"];
    [self.scrollView addSubview:midleImageView];
    
    
    UIImageView *rightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(midleImageView.frame)+52,768-80-248 , 248, 248)];
    rightImageView.image = [UIImage imageNamed:@"small-02"];
    [self.scrollView addSubview:rightImageView];
    
    
    
    
    //右边6个
    
    UIImageView *oneImageView = [[UIImageView alloc]initWithFrame:CGRectMake(1024+88,140 , 247, 247)];
    oneImageView.image = [UIImage imageNamed:@"small-01"];
    [self.scrollView addSubview:oneImageView];
    
    
    UIImageView *twoImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(oneImageView.frame)+52,140 , 247, 247)];
    twoImageView.image = [UIImage imageNamed:@"small-02"];
    [self.scrollView addSubview:twoImageView];
    
    
    UIImageView *threeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(twoImageView.frame)+52,140 , 247, 247)];
    threeImageView.image = [UIImage imageNamed:@"small-03"];
    [self.scrollView addSubview:threeImageView];
    
    
    
    UIImageView *fourImageView = [[UIImageView alloc]initWithFrame:CGRectMake(1024+88,CGRectGetMaxY(oneImageView.frame)+52 , 247, 247)];
    fourImageView.image = [UIImage imageNamed:@"small-04"];
    [self.scrollView addSubview:fourImageView];
    
    UIImageView *fiveImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(fourImageView.frame)+52,CGRectGetMaxY(oneImageView.frame)+52 , 247, 247)];
    fiveImageView.image = [UIImage imageNamed:@"small-05"];
    [self.scrollView addSubview:fiveImageView];
    
    
    UIImageView *sixImageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(fiveImageView.frame)+52,CGRectGetMaxY(oneImageView.frame)+52 , 247, 247)];
    sixImageView.image = [UIImage imageNamed:@"small-06"];
    [self.scrollView addSubview:sixImageView];
    
    
    
    NSMutableArray *imageViewArray = [[NSMutableArray alloc]initWithObjects:oneImageView,twoImageView,threeImageView,fourImageView,fiveImageView,sixImageView,upImageView,leftImageView,midleImageView,rightImageView, nil];
    
    for (UIImageView *imageView in imageViewArray) {
        [imageView setUserInteractionEnabled:YES];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handletap:)];
        [imageView addGestureRecognizer:tap];
    }
    
}

-(void)handletap:(UITapGestureRecognizer *)tapGes{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    TypeViewController *VC = [storyboard instantiateViewControllerWithIdentifier:@"TypeVC"];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
