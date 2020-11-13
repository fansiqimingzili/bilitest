//
//  TabbarViewController.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabbarViewController.h"

#import "TabViewHome.h"
#import "TabViewChannel.h"
#import "TabViewInfo.h"
#import "TabViewShopping.h"
#import "TabViewMine.h"
#import "ChannelNavigationViewController.h"
@implementation TabbarController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithWhite:0.0 alpha:0.0];
    [self InitTabbar];
}
-(void)InitTabbar{
   
    TabViewHome *tabviewhome=[[TabViewHome alloc]init];
    
    UINavigationController *navigationcontrollerhome=[[UINavigationController alloc]initWithRootViewController:tabviewhome];
    navigationcontrollerhome.tabBarItem.title=@"首页";
    navigationcontrollerhome.tabBarItem.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mainhome_normal@2x.png"];
    navigationcontrollerhome.tabBarItem.selectedImage=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mainhome_selected@2x.png"];

   // tabviewhome.view.backgroundColor=[UIColor redColor];
    
    TabViewChannel *tabviewchannel=[[TabViewChannel alloc]init];
    tabviewchannel.view.backgroundColor=[UIColor whiteColor];
    
    
    ChannelNavigationViewController *navigationcontrollerchannel=[[ChannelNavigationViewController alloc]initWithRootViewController:tabviewchannel];
    navigationcontrollerchannel.tabBarItem.title=@"频道";
    navigationcontrollerchannel.tabBarItem.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_pegasuschannel_normal@2x.png"];
    navigationcontrollerchannel.tabBarItem.selectedImage=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_pegasuschannel_selected@2x.png"];
   // tabviewchannel.
   // tabviewchannel.tabBarItem.image=@"频道";
    
    TabViewInfo *tabviewinfo=[[TabViewInfo alloc]init];
    UINavigationController *navigationcontrollerinfo=[[UINavigationController alloc]initWithRootViewController:tabviewinfo];
    navigationcontrollerinfo.tabBarItem.title=@"动态";
    navigationcontrollerinfo.tabBarItem.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_followinghome_normal@2x.png"];
    navigationcontrollerinfo.tabBarItem.selectedImage=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_followinghome_selected@2x.png"];
  //  UIImage *imagesend=[[UIImage alloc]initWithContentsOfFile:@"icon.bundle/bottom_tabbar_mainhome_selected@2x.png"];

    
    TabViewShopping *tabviewshopping=[[TabViewShopping alloc]init];
    UINavigationController *navigationcontrollershopping=[[UINavigationController alloc]initWithRootViewController:tabviewshopping];
    navigationcontrollershopping.tabBarItem.title=@"会员购";
    navigationcontrollershopping.tabBarItem.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mallhome_normal@2x.png"];
    navigationcontrollershopping.tabBarItem.selectedImage=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mallhome_selected@2x.png"];
    
    TabViewMine *tabviewmine=[[TabViewMine alloc]init];
    UINavigationController *navigationcontrollermine=[[UINavigationController alloc]initWithRootViewController:tabviewmine];
    navigationcontrollermine.tabBarItem.title=@"我的";
    navigationcontrollermine.tabBarItem.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_user_center_normal@2x.png"];
    navigationcontrollermine.tabBarItem.selectedImage=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_user_center_selected@2x.png"];
    
   
    [self setViewControllers:@[navigationcontrollerhome,navigationcontrollerchannel,navigationcontrollerinfo,navigationcontrollershopping,navigationcontrollermine]];
}

@end
