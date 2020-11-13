//
//  TabViewMine.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabViewMine.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface TabViewMine ()

@end

@implementation TabViewMine

-(instancetype)init{
    if(self=[super init]){
      //  self.view.backgroundColor=[UIColor greenColor];
        UIImage *imagestrogae=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mainhome_selected@2x.png"];
        UIImage *imageshop=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_mallhome_selected@2x.png"];
        UIImage *imagescenter=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_user_center_selected@2x.png"];
        UIBarButtonItem *barbutton1=[[UIBarButtonItem alloc]initWithImage:imagestrogae style:UIBarButtonItemStylePlain target:self action:nil];
        UIBarButtonItem *barbutton2=[[UIBarButtonItem alloc]initWithImage:imageshop style:UIBarButtonItemStylePlain target:self action:nil];
        UIBarButtonItem *barbutton3=[[UIBarButtonItem alloc]initWithImage:imagescenter style:UIBarButtonItemStylePlain target:self action:nil];
        //NSArray *arr=[barbutton1];
        
        self.navigationItem.rightBarButtonItems=[NSArray  arrayWithObjects:barbutton3,barbutton2,barbutton1,nil];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITableView *tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    tableview.dataSource=self;
    tableview.delegate=self;
    [self.view  addSubview:tableview];
    
//    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/20)];
//
//    nav.backgroundColor=[UIColor whiteColor];
//    [self.view addSubview:nav];
//
//    UIView *HeadSection = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/20, self.view.frame.size.width, HEIGHT/4)];
//    HeadSection.translatesAutoresizingMaskIntoConstraints = NO;
//    HeadSection.backgroundColor=[UIColor blueColor];
//    [self.view  addSubview:HeadSection];
//
//    UIView *NoteSection = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/20+self.view.frame.size.width/2, WIDTH, HEIGHT/6)];
//    NoteSection.translatesAutoresizingMaskIntoConstraints = NO;
//    NoteSection.backgroundColor=[UIColor systemPinkColor];
//    [self.view  addSubview:NoteSection];
}
-(void)viewClick{
    NSLog(@"viewClick");
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"主标题- %@",@(indexPath.row)];
    cell.detailTextLabel.text=@"副标题";
//    cell.imageView.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_followinghome_normal@2x.png"];
  // [cell layoutTableviewCell];
    return cell;
}

@end
