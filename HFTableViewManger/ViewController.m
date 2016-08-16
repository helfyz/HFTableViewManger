//
//  ViewController.m
//  HFTableViewManger
//
//  Created by helfy on 16/8/12.
//  Copyright © 2016年 HF. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+HFTableViewManger.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self hft_setupGroupedTableViw];
    
    void (^configCellBlock)(UITableViewCell *cell,HFTableViewCellModel *cellModel) = ^(UITableViewCell *cell,HFTableViewCellModel *model) {
        cell.textLabel.text = model.cellData;
    };
    
    HFTableViewSectionModel *sectionObj = [[HFTableViewSectionModel alloc] init];
    sectionObj.headHeigth = 50;
    for (NSInteger index = 0; index < 50; index ++) {
        HFTableViewCellModel*cellModel = [HFTableViewCellModel new];
        cellModel.cellData = @(index).stringValue;
        [cellModel setConfigCellBlock:configCellBlock];
        [sectionObj addCellModel:cellModel];
    }
    [self.hft_tableViewManger setupDataSourceModels:@[sectionObj] isAddmore:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
