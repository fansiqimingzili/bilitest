//
//  TabViewShopping.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabViewShopping.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface TabViewShopping ()

@end

@implementation TabViewShopping

-(instancetype)init{
    if(self=[super init]){
        self.navigationItem.title=@"会员购";
        UIImage *imagestrogae=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mainhome_selected@2x.png"];
        UIImage *imageshop=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mallhome_selected@2x.png"];
        UIImage *imagescenter=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_user_center_selected@2x.png"];
        UIBarButtonItem *barbutton1=[[UIBarButtonItem alloc]initWithImage:imagestrogae style:UIBarButtonItemStylePlain target:self action:nil];
        UIBarButtonItem *barbutton2=[[UIBarButtonItem alloc]initWithImage:imageshop style:UIBarButtonItemStylePlain target:self action:nil];
        UIBarButtonItem *barbutton3=[[UIBarButtonItem alloc]initWithImage:imagescenter style:UIBarButtonItemStylePlain target:self action:nil];
        //NSArray *arr=[barbutton1];
        
        self.navigationItem.rightBarButtonItems=[NSArray  arrayWithObjects:barbutton3,barbutton2,barbutton1,nil];
        //=//[barbutton1,barbutton2,barbutton3];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/20)];
//    
//    nav.backgroundColor=[UIColor whiteColor];
//    [self.view addSubview:nav];
//    
//    UIView *HeadSection = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/20, self.view.frame.size.width, WIDTH/10)];
//    HeadSection.translatesAutoresizingMaskIntoConstraints = NO;
//    HeadSection.backgroundColor=[UIColor blueColor];
//    [self.view  addSubview:HeadSection];
    
//    UILabel *labeltitle=[[UILabel alloc]initWithFrame:CGRectMake(WIDTH/2-WIDTH/12, 0,WIDTH/6, WIDTH/10)];
//    labeltitle.text=@"会员购";
//    labeltitle.textColor=[UIColor blackColor];
//    [HeadSection  addSubview:labeltitle];
}


@end
