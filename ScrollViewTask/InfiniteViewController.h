//
//  InfiniteViewController.h
//  ScrollViewTask
//
//  Created by Tharzeez on 7/29/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfiniteViewController : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *infiniteScrollView;

@end
