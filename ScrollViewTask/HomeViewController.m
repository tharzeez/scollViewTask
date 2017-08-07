//
//  HomeViewController.m
//  ScrollViewTask
//
//  Created by Tharzeez on 7/29/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)finiteAction:(id)sender {
    [self performSegueWithIdentifier:@"showFinite" sender:nil];
    
}

- (IBAction)infinteAction:(id)sender {
[self performSegueWithIdentifier:@"showInfinite" sender:nil];

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
