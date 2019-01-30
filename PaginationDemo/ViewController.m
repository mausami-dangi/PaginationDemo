//
//  ViewController.m
//  PaginationDemo
//
//  Created by Ankit Thakur on 30/01/19.
//  Copyright © 2019 Ankit Thakur. All rights reserved.
//

#import "ViewController.h"
#import "REPagedScrollView.h"

@interface ViewController () {
    NSMutableArray * imagesArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imagesArray = [[NSMutableArray alloc] init];
    
    UIImageView *imageView1 =[[UIImageView alloc] initWithFrame:CGRectMake(10,10,self.view.frame.size.width - 60,self.view.frame.size.height - 80)];
    imageView1.image=[UIImage imageNamed:@"camera.png"];
    
    UIImageView *imageView2 =[[UIImageView alloc] initWithFrame:CGRectMake(10,10,self.view.frame.size.width - 60,self.view.frame.size.height - 80)];
    imageView2.image=[UIImage imageNamed:@"watch.png"];
    
    UIImageView *imageView3 =[[UIImageView alloc] initWithFrame:CGRectMake(10,10,self.view.frame.size.width - 60,self.view.frame.size.height - 80)];
    imageView3.image=[UIImage imageNamed:@"headphone.png"];
    
    UIImageView *imageView4 =[[UIImageView alloc] initWithFrame:CGRectMake(10,10,self.view.frame.size.width - 60,self.view.frame.size.height - 80)];
    imageView4.image=[UIImage imageNamed:@"iphone.png"];
    
    UIImageView *imageView5 =[[UIImageView alloc] initWithFrame:CGRectMake(10,10,self.view.frame.size.width - 60,self.view.frame.size.height - 80)];
    imageView5.image=[UIImage imageNamed:@"draw.png"];
    
    NSMutableArray * imageViewsArray = [[NSMutableArray alloc] init];
    [imageViewsArray addObject:imageView1];
    [imageViewsArray addObject:imageView2];
    [imageViewsArray addObject:imageView3];
    [imageViewsArray addObject:imageView4];
    [imageViewsArray addObject:imageView5];
    
    
    REPagedScrollView *scrollView = [[REPagedScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor darkGrayColor];
    [self.view addSubview:scrollView];
    
    UIView *test = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height - 120)];
    [test addSubview:[imageViewsArray objectAtIndex:0]];
    [scrollView addPage:test];
    
    test = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height - 120)];
    [test addSubview:[imageViewsArray objectAtIndex:1]];
    [scrollView addPage:test];
    
    test = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height - 120)];
    [test addSubview:[imageViewsArray objectAtIndex:2]];
    [scrollView addPage:test];
    
    test = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height - 120)];
    [test addSubview:[imageViewsArray objectAtIndex:3]];
    [scrollView addPage:test];
    
    test = [[UIView alloc] initWithFrame:CGRectMake(20, 20, self.view.frame.size.width, self.view.frame.size.height - 120)];
    [test addSubview:[imageViewsArray objectAtIndex:4]];
    [scrollView addPage:test];

}


@end
