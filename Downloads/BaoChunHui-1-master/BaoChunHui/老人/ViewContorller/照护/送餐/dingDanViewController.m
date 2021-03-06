//
//  dingDanViewController.m
//  zhaoHuDemo
//
//  Created by BCH on 2016/12/14.
//  Copyright © 2016年 BCH. All rights reserved.
//

#import "dingDanViewController.h"
#import "TFSheetView.h"

@interface dingDanViewController ()
@property (nonatomic) UIButton *jiageButton;
@property (nonatomic) UIButton *payButton;
@property (nonatomic) TFSheetView *tfSheetView;
@end

@implementation dingDanViewController
//- (UIView *)daoHangView {
//    if (!_daoHangView) {
//        _daoHangView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, 66)];
//        [self.view addSubview:_daoHangView];
//        _daoHangView.backgroundColor = kRGBA(249, 110, 52, 1);
//    }
//    return _daoHangView;
//}
- (UIView *)myView {
    if (!_myView) {
        _myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH * 0.6)];
        [self.view addSubview:_myView];
        _myView.backgroundColor = [UIColor whiteColor];
    }
    return _myView;
}
- (UILabel *)nameLb {
    if (!_nameLb) {
        _nameLb = [UILabel new];
        [_myView addSubview:_nameLb];
        [_nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.top.equalTo(20);
            make.width.equalTo(150);
            make.height.equalTo(26);
        }];
        _nameLb.text = @"李大爷";
        _nameLb.font = [UIFont systemFontOfSize:25];
        _nameLb.textColor = kRGBA(26, 26, 26, 1);
    }
    return _nameLb;
}
- (UILabel *)phoneLb {
    if (!_phoneLb) {
        _phoneLb = [UILabel new];
        [_myView addSubview:_phoneLb];
        [_phoneLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-20);
            make.top.equalTo(20);
            make.width.equalTo(250);
            make.height.equalTo(26);
        }];
        _phoneLb.text = @"13445456666";
        _phoneLb.font = [UIFont systemFontOfSize:25];
        _phoneLb.textColor = kRGBA(26, 26, 26, 1);
        _phoneLb.textAlignment = NSTextAlignmentRight;
    }
    return _phoneLb;
}
- (UILabel *)addressLb {
    if (!_addressLb) {
        _addressLb = [UILabel new];
        [_myView addSubview:_addressLb];
        [_addressLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.right.equalTo(-50);
            make.height.equalTo(60);
            make.top.equalTo(_nameLb.mas_bottom).equalTo(10);
        }];
        _addressLb.text = @"北京市海淀区翠湖敬老院16号567";
        _addressLb.font = [UIFont systemFontOfSize:25];
        _addressLb.textColor = kRGBA(26, 26, 26, 1);
        _addressLb.numberOfLines = 0;
    }
    return _addressLb;
}
- (UIView *)lineView1 {
    if (!_lineView1) {
        _lineView1 = [UIView new];
        [_myView addSubview:_lineView1];
        [_lineView1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0);
            make.height.equalTo(1);
            make.top.equalTo(_addressLb.mas_bottom).equalTo(20);
        }];
        _lineView1.backgroundColor = kRGBA(224, 224, 224, 1);
    }
    return _lineView1;
}
- (UILabel *)sendLb {
    if (!_sendLb) {
        _sendLb = [UILabel new];
        [_myView addSubview:_sendLb];
        [_sendLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.top.equalTo(_lineView1.mas_bottom).equalTo(20);
            make.right.equalTo(-20);
            make.height.equalTo(26);
        }];
        _sendLb.text = @"送餐频率:";
        _sendLb.font = [UIFont systemFontOfSize:25];
        _sendLb.textColor = kRGBA(26, 26, 26, 1);
    }
    return _sendLb;
}
- (UILabel *)typeLb {
    if (!_typeLb) {
        _typeLb = [UILabel new];
        [_myView addSubview:_typeLb];
        [_typeLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.top.equalTo(_sendLb.mas_bottom).equalTo(10);
            make.height.equalTo(26);
            make.right.equalTo(-50);
        }];
        _typeLb.text = @"套餐搭配:";
        _typeLb.font = [UIFont systemFontOfSize:25];
        _typeLb.textColor = kRGBA(26, 26, 26, 1);
    }
    return _typeLb;
}
- (UILabel *)styleLb {
    if (!_styleLb) {
        _styleLb = [UILabel new];
        [_myView addSubview:_styleLb];
        [_styleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.top.equalTo(_typeLb.mas_bottom).equalTo(10);
            make.right.equalTo(-50);
            make.height.equalTo(26);
        }];
        _styleLb.text = @"个性套餐：";
        _styleLb.font = [UIFont systemFontOfSize:25];
        _styleLb.textColor = kRGBA(26, 26, 26, 1);
    }
    return _styleLb;
}
- (UILabel *)timeLb {
    if (!_timeLb) {
        _timeLb = [UILabel new];
        [_myView addSubview:_timeLb];
        [_timeLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(12);
            make.top.equalTo(_styleLb.mas_bottom).equalTo(10);
            make.right.equalTo(-50);
            make.height.equalTo(26);
        }];
        _timeLb.text = @"开始送餐时间：";
        _timeLb.font = [UIFont systemFontOfSize:25];
        _timeLb.textColor = kRGBA(26, 26, 26, 1);
    }
    return _timeLb;
}
- (UIView *)lineView2 {
    if (!_lineView2) {
        _lineView2 = [UIView new];
        [_myView addSubview:_lineView2];
        [_lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(0);
            make.height.equalTo(1);
            make.top.equalTo(_timeLb.mas_bottom).equalTo(20);
        }];
        _lineView2.backgroundColor = kRGBA(244, 244, 244, 1);
    }
    return _lineView2;
}
- (UILabel *)allPrice {
    if (!_allPrice) {
        _allPrice = [UILabel new];
        [_myView addSubview:_allPrice];
        [_allPrice mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(-15);
            make.width.equalTo(220);
            make.height.equalTo(30);
            make.bottom.equalTo(-20);
        }];
        NSString *str = @"合计：";
        NSString *str2 = @"￥1200.00";
        _allPrice.text = [NSString stringWithFormat:@"%@%@",str,str2];
        _allPrice.textAlignment = NSTextAlignmentRight;
        _allPrice.textColor = kRGBA(252, 110, 39, 1);
        _allPrice.font = [UIFont systemFontOfSize:28];
    }
    return _allPrice;
}
- (UIButton *)jiageButton {
    if (!_jiageButton) {
        _jiageButton = [UIButton new];
        [self.view addSubview:_jiageButton];
        [_jiageButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.equalTo(0);
            make.height.equalTo(49);
            make.width.equalTo(self.payButton.mas_width);
        }];
        [_jiageButton setTitleColor:kRGBA(252, 110, 39, 1) forState:UIControlStateNormal];
        [_jiageButton setTitle:@"￥1200.00" forState:UIControlStateNormal];
        _jiageButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _jiageButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _jiageButton.backgroundColor = [UIColor whiteColor];
    }
    return _jiageButton;
}
- (UIButton *)payButton {
    if (!_payButton) {
        _payButton = [[UIButton alloc] init];
        [self.view addSubview:_payButton];
        [_payButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.bottom.equalTo(0);
            make.height.equalTo(49);
            make.left.equalTo(self.jiageButton.mas_right);
        }];
        [_payButton setTitle:@"立即支付" forState:UIControlStateNormal];
        _payButton.titleLabel.font = [UIFont systemFontOfSize:30];
        _payButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        _payButton.backgroundColor = kRGBA(252, 110, 39, 1);
        _payButton.titleLabel.textColor = [UIColor whiteColor];
        
        [_payButton addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _payButton;
}
- (void)push {
    _tfSheetView = [[TFSheetView alloc]init];
    [_tfSheetView showInView:self.view];
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.barTintColor = kRGBA(252, 110, 39, 1);
}
- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBar.barTintColor = kRGBA(48, 206, 185, 1);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [TRFactory addBackItemForVC:self];
    self.navigationItem.title = @"确认订单";
    self.view.backgroundColor = kRGBA(245, 245, 245, 1);
    [self daoHangView];
    [self myView];
    [self nameLb];
    [self phoneLb];
    [self addressLb];
    [self lineView1];
    [self sendLb];
    [self typeLb];
    [self styleLb];
    [self timeLb];
    [self lineView2];
    [self allPrice];
    [self jiageButton];
    [self payButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
