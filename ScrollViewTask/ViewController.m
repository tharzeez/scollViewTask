//
//  ViewController.m
//  ScrollViewTask
//
//  Created by Tharzeez on 7/27/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSMutableArray *imgArray;
    NSData *imgData;
    UIImage *img;
    UIView *myView;
   // UIImage *imgView;
    
}
@end

@implementation ViewController
static int height =50;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat width=self.view.frame.size.width;
    CGSize size=CGSizeMake(width, 10000);
    _myScrollView.backgroundColor=[UIColor colorWithRed:200/255.0 green:200/255.0 blue:120/255.0 alpha:0.5];
    _myScrollView.contentSize=size;
    self.myScrollView.delegate=self;
    _myScrollView.bounces=NO;
    _myScrollView.indicatorStyle=UIScrollViewIndicatorStyleBlack;
    imgArray =[[NSMutableArray alloc]init];
    
    for(int i =0;i<12;i++){
        static int count=1;
        img =[UIImage imageNamed:[NSString stringWithFormat:@"File%d",count]];
        imgData =[NSData dataWithData:(UIImagePNGRepresentation(img))];
        [imgArray addObject:imgData];
        
        
    }
    
  
    
    for(int i=0;i<12;i++){
        static int count =1;
        
        UIImageView *imgView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"File%d",count]]];
        imgView.frame=CGRectMake(0, 0, self.myScrollView.frame.size.width-10, 420);
        
        
        imgView.frame=CGRectOffset(imgView.frame, 20, height );
        [self.myScrollView addSubview:imgView];
        height=height+450;
        
        count++;

        
        
    }
    
    _myScrollView.contentSize=CGSizeMake(width, height);
   
    
    
}





-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)changeBackGroundColor:(id)sender {
    UIButton *bgButton=(UIButton *)sender;
    bgButton.userInteractionEnabled=YES;
    if ([bgButton.currentTitle  isEqual:@"cyan"] ){
        _myScrollView.backgroundColor=[UIColor cyanColor];
    }else if ([bgButton.currentTitle isEqual:@"Yellow"]){
        _myScrollView.backgroundColor=[UIColor yellowColor];
    }else if([bgButton.currentTitle isEqual:@"white"]){
        _myScrollView.backgroundColor=[UIColor whiteColor];
    }else{
         _myScrollView.backgroundColor=[UIColor colorWithRed:200/255.0 green:200/255.0 blue:120/255.0 alpha:0.5];
    }
    
    
}





-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
  //  NSLog(@"Scroll Started");
   // NSLog(@" x is %f ,y is %f",_myScrollView.contentOffset.x,_myScrollView.contentOffset.y);
    
    
}
- (IBAction)scrollToTopAction:(id)sender {
    //[self performSelector:@selector(scrollViewShouldScrollToTop:)];
    
}

-(BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
//    NSLog(@"Begin dragging");
}

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    //NSLog(@"%f,%f",velocity.x,velocity.y);
    
}

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
  //  NSLog(@"started to decelrate");
}

-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    //NSLog(@"Ended Dragging");
}



@end
