//
//  InfiniteViewController.m
//  ScrollViewTask
//
//  Created by Tharzeez on 7/29/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import "InfiniteViewController.h"

@interface InfiniteViewController ()

@end

@implementation InfiniteViewController

int static height=20;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"once");
    float width =self.view.frame.size.width;
    self.infiniteScrollView.delegate=self;
    [self.infiniteScrollView setContentSize:CGSizeMake(self.view.frame.size.width-1140, 10000)];
 //   [self.infiniteScrollView setContentInset:UIEdgeInsetsMake(10, 10, 10, 10)];
   // self.infiniteScrollView.showsVerticalScrollIndicator=NO;
    self.infiniteScrollView.alwaysBounceHorizontal=YES;
    
    for(int i =0;i<12;i++){
        int static count=1;
        
        UIImageView *imgView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"File%d",count]]];
        //imgView.frame=CGSizeMake((self.view.frame.size.width)-10, 420);
        imgView.frame=CGRectMake(0 , 0, (self.view.frame.size.width)-20, 420);
        
        imgView.frame= CGRectOffset(imgView.frame, 10, height);
        
        [self.infiniteScrollView addSubview:imgView];
        
        height=height +450;
        count++;
        
        
        
        
    }
    
    [_infiniteScrollView setContentSize:CGSizeMake(width, height)];
    
    
    
    
    
}


-(void)changeOffset{
 //   _infiniteScrollView.contentOffset.y=0;
    [self.infiniteScrollView setContentOffset:CGPointMake(0, 0) animated:NO];
    
}

-(void)changeOffUpset{
    //   _infiniteScrollView.contentOffset.y=0;
    [self.infiniteScrollView setContentOffset:CGPointMake(0, 4750) animated:NO];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if(_infiniteScrollView.contentOffset.y > 4749){
        [self performSelector:@selector(changeOffset)];
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
