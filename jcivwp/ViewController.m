//
//  ViewController.m
//  jcivwp
//
//  Created by 179159 on 14/05/15.
//  Copyright (c) 2015 TCS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize userPassword,userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIColor *color = [UIColor whiteColor];
    
    
    self.userName.attributedPlaceholder =[[NSAttributedString alloc] initWithString:@"Username"
                                                                         attributes:@{NSForegroundColorAttributeName: color,
                                                                                      NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:17.0]}];
    self.userPassword.attributedPlaceholder =[[NSAttributedString alloc] initWithString:@"Password"
                                                                             attributes:@{NSForegroundColorAttributeName: color,
                                                                                          NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:17.0]}];
    
    CGRect layerFrame = CGRectMake(0, 0, self.userName.frame.size.width, self.userName.frame.size.height);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, 0);
    //    CGPathAddLineToPoint(path, NULL, layerFrame.size.width, 0); // top line
    CGPathMoveToPoint(path, NULL, 0, layerFrame.size.height);
    CGPathAddLineToPoint(path, NULL, layerFrame.size.width, layerFrame.size.height); // bottom line
    CAShapeLayer * line = [CAShapeLayer layer];
    line.path = path;
    line.lineWidth = 2;
    line.frame = layerFrame;
    line.strokeColor = [UIColor whiteColor].CGColor;
    
    [self.userName.layer addSublayer:line];
    
    layerFrame = CGRectMake(0, 0, self.userPassword.frame.size.width, self.userPassword.frame.size.height);
    path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, 0);
    //    CGPathAddLineToPoint(path, NULL, layerFrame.size.width, 0); // top line
    CGPathMoveToPoint(path, NULL, 0, layerFrame.size.height);
    CGPathAddLineToPoint(path, NULL, layerFrame.size.width, layerFrame.size.height); // bottom line
    line = [CAShapeLayer layer];
    line.path = path;
    line.lineWidth = 2;
    line.frame = layerFrame;
    line.strokeColor = [UIColor whiteColor].CGColor;
    [self.userPassword.layer addSublayer:line];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;

}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}
- (IBAction)loginPressed:(id)sender{
    
    NSLog(@"dasdfasdafs");
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if(textField == userName)
    {
        [userPassword becomeFirstResponder];
        
    }else{
        [textField resignFirstResponder];
    }
    
    return YES;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{


}

@end
