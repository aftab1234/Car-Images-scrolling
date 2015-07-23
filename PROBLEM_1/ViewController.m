//
//  ViewController.m
//  PROBLEM_1
//
//  Created by Sam on 08/07/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
      NSArray *imgUrls = [NSArray arrayWithObjects:@"http://m.letmedrive.in/cars/7.jpg",@"http://m.letmedrive.in/cars/6.jpg",@"http://m.letmedrive.in/cars/5.jpg",@"http://m.letmedrive.in/cars/4.jpg",@"http://m.letmedrive.in/cars/3.jpg" ,nil];
    int y=0;
    for (int i=0; i<5; i++)
    {
    NSURL *url = [NSURL URLWithString:[imgUrls objectAtIndex:i]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [[UIImage alloc] initWithData:data];
        imgView= [[UIImageView alloc] initWithFrame:CGRectMake(130, y+20, 100, 80)];
        y=y+200;
        imgView.image=img;
        
        [scrollView addSubview:imgView];
    }
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width, y-100)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
//    return imgView;
//}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did end decelerating");
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //    NSLog(@"Did scroll");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did begin decelerating");
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"Did begin dragging");
}

@end
