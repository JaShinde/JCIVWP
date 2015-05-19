//
//  DashboardViewController.m
//  jcivwp
//
//  Created by 179159 on 18/05/15.
//  Copyright (c) 2015 TCS. All rights reserved.
//

#import "DashboardViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface DashboardViewController ()

@end

@implementation DashboardViewController

@synthesize  alarmText,materialTable;

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
    self.alarmText.layer.masksToBounds = YES;
    self.alarmText.layer.cornerRadius = 8;
//    self.materialTable.contentInset = UIEdgeInsetsMake(0, 0, self.materialTable.frame.size.height - 20, 0);
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.translucent = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIImage *myImage = [UIImage imageNamed:@"cell_background.png"];
    UIImageView *imageView = [[[UIImageView alloc] initWithImage:myImage] init];
    imageView.frame = CGRectMake(1,1,300,44);
    
    UILabel *lblTitle_material = [[UILabel alloc] initWithFrame:CGRectMake(50,3, 100 ,30)];
    lblTitle_material.text = @"Material No";
    lblTitle_material.textColor = [UIColor whiteColor];
    lblTitle_material.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
    [imageView addSubview:lblTitle_material];

    UILabel *lblTitle_quantity = [[UILabel alloc] initWithFrame:CGRectMake(235,3, 100 ,30)];
    lblTitle_quantity.text = @"Quanity";
    lblTitle_quantity.textColor = [UIColor whiteColor];
    lblTitle_quantity.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
    [imageView addSubview:lblTitle_quantity];

    UILabel *lblTitle_availability = [[UILabel alloc] initWithFrame:CGRectMake(360,3, 100 ,30)];
    lblTitle_availability.text = @"Availability";
    lblTitle_availability.textColor = [UIColor whiteColor];
    lblTitle_availability.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
    [imageView addSubview:lblTitle_availability];

    UILabel *lblTitle_stationNo = [[UILabel alloc] initWithFrame:CGRectMake(510,3, 100 ,30)];
    lblTitle_stationNo.text = @"Station No";
    lblTitle_stationNo.textColor = [UIColor whiteColor];
    lblTitle_stationNo.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
    [imageView addSubview:lblTitle_stationNo];

    UILabel *lblTitle_delivery = [[UILabel alloc] initWithFrame:CGRectMake(660,3, 100 ,30)];
    lblTitle_delivery.text = @"Delivery";
    lblTitle_delivery.textColor = [UIColor whiteColor];
    lblTitle_delivery.font = [UIFont fontWithName:@"Helvetica-Bold" size:18];
    [imageView addSubview:lblTitle_delivery];
    
    return imageView;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

 static   NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
    UIImage *myImage = [UIImage imageNamed:@"cell_background.png"];
    UIImageView *imageView = [[[UIImageView alloc] initWithImage:myImage] init];
    imageView.frame = CGRectMake(1,1,300,44);
//    
    cell.backgroundView = imageView;
    // Configure Cell
//    [cell.textLabel setText:[NSString stringWithFormat:@"Row %i in Section %i", [indexPath row], [indexPath section]]];
    
    return cell;
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
