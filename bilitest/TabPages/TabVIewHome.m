//
//  TabVIewHome.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabViewHome.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface TabViewHome ()<UICollectionViewDataSource,UICollectionViewDelegate>
//{
//   // UICollectionView *collectionview;
//}
//@property (nonatomic, strong)UICollectionViewFlowLayout *flowlayout;
////@property (nonatomic, strong)UICollectionView *collectionview;
//@property (nonatomic, strong) UICollectionView *collectionview;
@property (nonatomic, assign) float StatusBarHeight;

@property (nonatomic, strong) UIButton *LiveHead;
@property (nonatomic, strong) UIButton *SectionHead;

@end

@implementation TabViewHome

-(instancetype)init{
    if(self=[super init]){

    }
    return self;
}
-(void)viewDidLoad{
    [super viewDidLoad];
    UICollectionViewFlowLayout *flowlayout=[[UICollectionViewFlowLayout alloc]init];
    flowlayout.minimumLineSpacing=10;
    flowlayout.minimumInteritemSpacing=10;
    flowlayout.itemSize=CGSizeMake((self.view.bounds.size.width-10)/2, 300);
    

    
    UICollectionView *collectionview=[[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:flowlayout];
    
    collectionview.dataSource=self;
    collectionview.delegate = self;
    collectionview.backgroundColor=[UIColor whiteColor];

    [collectionview registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    
    [self.view addSubview:collectionview];
    [self get];
   // _StatusBarHeight =self.view.frame.size.height/15; //window.windowScene.statusBarManager.statusBarFrame.size.height;

//    UINavigationBar *nav=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/20)];
//    
//    nav.backgroundColor=[UIColor whiteColor];
//    [self.view addSubview:nav];
//    
//    UIView *HeadSection = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/20, WIDTH, WIDTH/10)];
//    HeadSection.translatesAutoresizingMaskIntoConstraints = NO;
//    HeadSection.backgroundColor=[UIColor blueColor];
//    [self.view  addSubview:HeadSection];
//    UINavigationBar *navbar=[[UINavigationBar alloc]initWithFrame:CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.view addSubview:navbar];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (__kindof UICollectionViewCell*)collectionView:(UICollectionView*)collectionview cellForItemAtIndexPath:( NSIndexPath *)indexPath{
    UICollectionViewCell *cell =[collectionview dequeueReusableCellWithReuseIdentifier:@"UICollectionViewCell"forIndexPath:indexPath];
    cell.backgroundColor=[UIColor grayColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.item==0){
        return CGSizeMake(self.view.bounds.size.width, 250);
    }
    else{
        return CGSizeMake((self.view.bounds.size.width-10)/2, 300);
    }
}

 -(void)get{
     //GET请求，直接把请求参数跟在URL的后面以？隔开，多个参数之间以&符号拼接

     //1.确定请求路径
     NSURL *url = [NSURL URLWithString:@""];

     //2.创建请求对象
     //请求对象内部默认已经包含了请求头和请求方法（GET）
     NSURLRequest *request = [NSURLRequest requestWithURL:url];

     //3.获得会话对象
     NSURLSession *session = [NSURLSession sharedSession];

     //4.根据会话对象创建一个Task(发送请求）
     /*
      第一个参数：请求对象
      第二个参数：completionHandler回调（请求完成【成功|失败】的回调）
               data：响应体信息（期望的数据）
                response：响应头信息，主要是对服务器端的描述
                error：错误信息，如果请求失败，则error有值
      */
     NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        if (error == nil) {
             //6.解析服务器返回的数据
             //说明：（此处返回的数据是JSON格式的，因此使用NSJSONSerialization进行反序列化处理）
             NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];

             NSLog(@"%@",dict);
         }
     }];

     //5.执行任务
     [dataTask resume];
}
@end
