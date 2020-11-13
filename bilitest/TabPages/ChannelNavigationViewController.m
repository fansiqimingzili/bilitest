//
//  ChannelNavigationViewController.m
//  bilitest
//
//  Created by Bilibili on 2020/11/13.
//

#import "ChannelNavigationViewController.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface ChannelNavigationViewController ()
@property (nonatomic, strong) UIButton *btnsection;
@property (nonatomic, strong) UIButton *btnchannel;

@end

@implementation ChannelNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //NSLayoutYAxisAnchor
    
//   _btnsection=[[UIButton alloc]initWithFrame:CGRectMake(WIDTH/2-WIDTH/12-WIDTH/6, 0, WIDTH/6, WIDTH/12)];
//    //btnsection.backgroundColor=[UIColor grayColor];
//
//    [_btnsection setTitle: @"频道" forState: UIControlStateNormal];
//    [_btnsection setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
//
//    [self.navigationBar addSubview:_btnsection];
//
//   _btnchannel=[[UIButton alloc]initWithFrame:CGRectMake(WIDTH/2+WIDTH/12, 0, WIDTH/6, WIDTH/12)];
//   // btnchannel.backgroundColor=[UIColor grayColor];
//    [_btnchannel setTitle: @"分区" forState: UIControlStateNormal];
//    [_btnchannel setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
//    [self.navigationBar addSubview:_btnchannel];
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
