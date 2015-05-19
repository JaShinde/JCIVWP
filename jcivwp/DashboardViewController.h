//
//  DashboardViewController.h
//  jcivwp
//
//  Created by 179159 on 18/05/15.
//  Copyright (c) 2015 TCS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) IBOutlet UILabel *alarmText;
@property(nonatomic,strong) IBOutlet UITableView *materialTable;
@property(nonatomic,strong) IBOutlet UIButton *agvStatus;


@end
