//
//  SectionViewController.m
//  bilitest
//
//  Created by Bilibili on 2020/11/10.
//

#import "SectionViewController.h"

@interface SectionViewController ()

@end

@implementation SectionViewController

-(instancetype)init{
    if(self=[super init]){
        self.tabBarItem.title=@"分区";
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
    UICollectionViewFlowLayout *flowlayout=[[UICollectionViewFlowLayout alloc]init];
    flowlayout.minimumLineSpacing=1;
    flowlayout.minimumInteritemSpacing=1;
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
//    if(indexPath.item==0){
//        return CGSizeMake(self.view.bounds.size.width, 250);
//    }
//    else{
        return CGSizeMake((self.view.bounds.size.width)/5, (self.view.bounds.size.width)/5);
 //   }
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
