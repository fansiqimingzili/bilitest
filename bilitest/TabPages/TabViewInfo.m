//
//  TabViewInfo.m
//  bilitest
//
//  Created by Bilibili on 2020/11/9.
//

#import <Foundation/Foundation.h>
#import "TabViewInfo.h"
#import "TableViewCell.h"

#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height

@interface TabViewInfo()
@end

@implementation TabViewInfo

-(instancetype)init{
    if(self=[super init]){
        self.navigationItem.title=@"动态";
        self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"发布" style:UIBarButtonItemStylePlain  target:self action:nil];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
        return CGSizeMake(self.view.bounds.size.width, 200);
    }
    else{
        return CGSizeMake(self.view.bounds.size.width, 300);
    }
}

@end
