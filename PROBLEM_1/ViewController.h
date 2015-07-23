//
//  ViewController.h
//  PROBLEM_1
//
//  Created by Sam on 08/07/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
{
       UIImageView *imgView;
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;


@end

