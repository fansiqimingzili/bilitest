//
//  ChannelViewController.m
//  bilitest
//
//  Created by Bilibili on 2020/11/10.
//

#import "ChannelViewController.h"

@interface ChannelViewController ()

@end

@implementation ChannelViewController

-(instancetype)init{
    if(self=[super init]){
        self.tabBarItem.title=@"频道";
        self.view.backgroundColor=[UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initView];
}

- (void)initView {
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
    UITableView *tableview=[[UITableView alloc]initWithFrame:self.view.bounds];
    tableview.dataSource=self;
    tableview.delegate=self;
    [self.view addSubview:tableview];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"id"];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    }
    cell.textLabel.text=[NSString stringWithFormat:@"主标题- %@",@(indexPath.row)];
    cell.detailTextLabel.text=@"副标题";
    cell.imageView.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_followinghome_normal@2x.png"];
    //[cell layoutTableviewCell];
    return cell;
}
@end
