//
//  TabViewChannel.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabViewChannel.h"
#import "ChannelViewController.h"
#import "SectionViewController.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface TabViewChannel ()

@property (nonatomic, assign) float StatusBarHeight;

@property (nonatomic, strong) UIView *HeadSection;
@property (nonatomic, strong) UIButton *ChannelHead;
@property (nonatomic, strong) UIButton *SectionHead;
@property (nonatomic, strong) UINavigationController *nav;
@property (nonatomic, strong) UISegmentedControl *segmentedControl;

@property (nonatomic, strong) ChannelViewController *channel;
@property (nonatomic, strong) SectionViewController *section;


@property (nonatomic, strong) UIViewController *CurrentViewController;

@end

@implementation TabViewChannel

-(instancetype)init{
    if(self=[super init]){
       // self.tabBar.
//        UIBarButtonItem *barbutton1=[[UIBarButtonItem alloc]initWithTitle:@"频道" style:UIBarButtonItemStylePlain target:self action:nil];
//        UIBarButtonItem *barbutton2=[[UIBarButtonItem alloc]initWithTitle:@"专区" style:UIBarButtonItemStylePlain target:self action:nil];
        //NSArray *arr=[barbutton1];
        //self.navigationItem=[[UINavigationBar alloc]initwi];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ChannelViewController *channel=[[ChannelViewController alloc]init];
    channel.view.frame=CGRectMake(0, 0, WIDTH, HEIGHT);
    SectionViewController *section=[[SectionViewController alloc]init];
    section.view.frame=CGRectMake(0, 0, WIDTH, HEIGHT);
    
    NSArray *segmentedArray = [NSArray arrayWithObjects:@"频道",@"分区",nil];
    _segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    _segmentedControl.frame = CGRectMake(0, 0, 100, 30);
    _segmentedControl.selectedSegmentIndex = 0;
    _segmentedControl.tintColor = [UIColor whiteColor];
    _segmentedControl.apportionsSegmentWidthsByContent=YES;
    [_segmentedControl addTarget:self action:@selector(segmentBtnClick) forControlEvents:UIControlEventValueChanged];
  //  segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;

   // [segmentedControl addTarget:self  action:@selector(indexDidChangeForSegmentedControl:)

  //  forControlEvents:UIControlEventValueChanged];
    [self.navigationItem setTitleView:_segmentedControl];

    [self initView];
}
- (void)segmentBtnClick{
    //点击实现偏移
  
    NSInteger Index = _segmentedControl.selectedSegmentIndex;
  
    if (Index == 0) {
      //toggle the correct view to be visible
//      [_section setHidden:NO];
//      [_channel setHidden:YES];
    }
    else{
      //toggle the correct view to be visible
//      [firstView setHidden:YES];
//      [secondView setHidden:NO];
    }
       
}



-(void)initView{
   // self.view.backgroundColor = [UIColor blackColor];
//    ChannelViewController *channelview=[[ChannelViewController alloc]init];
//   // tabviewhome.view.backgroundColor=[UIColor redColor];
//
//    SectionViewController *sectionview=[[SectionViewController alloc]init];
//
//    [self setViewControllers:@[channelview,sectionview]];
    
    [self initHeadSection];
}

- (void)initHeadSection {
//    for (UIWindow *window in [UIApplication sharedApplication].windows) {
//        if (window.isKeyWindow) {
//            _StatusBarHeight = window.windowScene.statusBarManager.statusBarFrame.size.height;
//            break;
//        }
//    }
//
//    _HeadSection = [[UIView alloc] initWithFrame:CGRectMake(0, _StatusBarHeight, WIDTH, 50)];
//    _HeadSection.translatesAutoresizingMaskIntoConstraints = NO;
//    _HeadSection.backgroundColor=[UIColor whiteColor];
//    [self.view addSubview:_HeadSection];
    
//    float headTitleWidth = 60;
////
//
//
//    ChannelViewController *middlehead = [[ChannelViewController alloc] init];
//    middlehead.view.frame = CGRectMake(0, 0 , WIDTH, HEIGHT);
//    _CurrentViewController = middlehead;
//
//    [self addChildViewController:_CurrentViewController];
//    [self.view addSubview:_CurrentViewController.view];
//    [_CurrentViewController didMoveToParentViewController:self];
    
//    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/20)];
//
//    nav.backgroundColor=[UIColor whiteColor];
//    [self.view addSubview:nav];
//
//    UIView *HeadSection = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/20, WIDTH, WIDTH/10)];
//    HeadSection.translatesAutoresizingMaskIntoConstraints = NO;
//    HeadSection.backgroundColor=[UIColor blueColor];
//    HeadSection.layer.masksToBounds=YES;
//   // HeadSection.layer.borderColor=[UIColor grayColor];
//    HeadSection.layer.borderWidth=1.0;
//    [self.view  addSubview:HeadSection];
    
    
//    _ChannelHead= [self buttonWithFrame:CGRectMake(WIDTH / 2 - WIDTH / 6-WIDTH/10, 0, WIDTH/10, self.view.frame.size.height/20) andTitle:@"频道"];
//    _ChannelHead.backgroundColor=[UIColor blackColor];
//    [_ChannelHead addTarget:self action:@selector(goHeadSection) forControlEvents:UIControlEventTouchUpInside];
//    [HeadSection addSubview:_ChannelHead];

////
//    _SectionHead = [self buttonWithFrame:CGRectMake(WIDTH / 2 +WIDTH / 6, 0, WIDTH/10, self.view.frame.size.height/20) andTitle:@"分区"];
//    _SectionHead.backgroundColor=[UIColor blackColor];
//    [_SectionHead addTarget:self action:@selector(goHeadChannel) forControlEvents:UIControlEventTouchUpInside];
//    [HeadSection addSubview:_SectionHead];

}
- (UIButton *)buttonWithFrame:(CGRect)frame andTitle:(NSString *)title {
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    return btn;
}

//// 切换到同城页面
//- (void)goHeadSection {
//    //NSLog(@"切换到同城页面");
//    [_CurrentViewController willMoveToParentViewController:nil];
//    [_CurrentViewController.view removeFromSuperview];
//    [_CurrentViewController removeFromParentViewController];
//
//    ChannelViewController *newvc = [[ChannelViewController alloc] init];
//    newvc.view.frame = CGRectMake(0, _HeadSection.frame.origin.y + 50, WIDTH, HEIGHT - 130 - _StatusBarHeight);
//    _CurrentViewController = newvc;
//
//    [self addChildViewController:_CurrentViewController];
//    [self.view addSubview:_CurrentViewController.view];
//    [_CurrentViewController didMoveToParentViewController:self];
//}
//
//// 切换到推荐页面
//- (void)goHeadChannel {
//   // NSLog(@"切换到推荐页面");
//    [_CurrentViewController willMoveToParentViewController:nil];
//    [_CurrentViewController.view removeFromSuperview];
//    [_CurrentViewController removeFromParentViewController];
//
//    SectionViewController *newvc = [[SectionViewController alloc] init];
//    newvc.view.frame = CGRectMake(0, _HeadSection.frame.origin.y + 50, WIDTH, HEIGHT - 130 - _StatusBarHeight);
//    _CurrentViewController = newvc;
//
//    [self addChildViewController:_CurrentViewController];
//    [self.view addSubview:_CurrentViewController.view];
//    [_CurrentViewController didMoveToParentViewController:self];
//}


@end
