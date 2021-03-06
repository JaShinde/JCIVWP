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
@property(nonatomic,strong) IBOutlet UIButton *station1;
@property(nonatomic,strong) IBOutlet UIButton *station2;
@property(nonatomic,strong) IBOutlet UIButton *station3;
@property(nonatomic,strong) IBOutlet UIButton *station4;
@property(nonatomic,strong) IBOutlet UIButton *station5;
@property(nonatomic,strong) IBOutlet UIButton *store;
@property(nonatomic,strong) IBOutlet UIButton *status_run;
@property(nonatomic,strong) IBOutlet UIButton *status_stop;
@property(nonatomic,strong) IBOutlet UIButton *status_alarm;


@end
