//
//  TableViewCell.m
//  bilitest
//
//  Created by Bilibili on 2020/11/10.
//

#import "TableViewCell.h"
@interface TableViewCell()

@property(nonatomic,strong,readwrite)UILabel *viewlabel;
@property(nonatomic,strong,readwrite)UILabel *sharelabel;
@property(nonatomic,strong,readwrite)UILabel *commentlabel;
@property(nonatomic,strong,readwrite)UILabel *zanlabel;
@property(nonatomic,strong,readwrite)UIImageView *infoimageview;
@property(nonatomic,strong,readwrite)UIButton *uibtn;

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self.contentView addSubview:({
            self.viewlabel=[[UILabel alloc]initWithFrame:CGRectMake(self.frame.origin.x+20, self.frame.origin.y+15, self.frame.size.width/10, self.frame.size.width/20)];
          // self.viewlabel.backgroundColor=[UIColor redColor];
            
            self.viewlabel;
        })];
        
        [self.contentView addSubview:({
            self.sharelabel=[[UILabel alloc]initWithFrame:CGRectMake(self.frame.origin.x+20, self.frame.origin.y+180, self.frame.size.width/10, self.frame.size.width/20)];
        //    self.sharelabel.backgroundColor=[UIColor redColor];
            self.sharelabel.font=[UIFont systemFontOfSize:12];
            self.sharelabel.textColor=[UIColor grayColor];
            self.sharelabel;
        })];
        
        [self.contentView addSubview:({
            self.commentlabel=[[UILabel alloc]initWithFrame:CGRectMake(self.frame.origin.x+320, self.frame.origin.y+180, self.frame.size.width/10, self.frame.size.width/20)];
        //    self.commentlabel.backgroundColor=[UIColor redColor];
            self.commentlabel.font=[UIFont systemFontOfSize:12];
            self.commentlabel.textColor=[UIColor grayColor];
            self.commentlabel;
        })];
        
        [self.contentView addSubview:({
            self.zanlabel=[[UILabel alloc]initWithFrame:CGRectMake(self.frame.origin.x+620, self.frame.origin.y+180, self.frame.size.width/10, self.frame.size.width/20)];
        //    self.zanlabel.backgroundColor=[UIColor redColor];
            self.zanlabel.font=[UIFont systemFontOfSize:12];
            self.zanlabel.textColor=[UIColor grayColor];
            self.zanlabel;
        })];
        [self.contentView addSubview:({
            self.infoimageview=[[UIImageView alloc]initWithFrame:CGRectMake(self.frame.size.width*2/5, self.frame.size.height*2/5, self.frame.size.width/3, self.frame.size.width/3)];
            self.infoimageview;
        })];
        
        [self.contentView addSubview:({
            self.uibtn=[[UIButton alloc]initWithFrame:CGRectMake(self.frame.size.width, self.frame.origin.y, self.frame.size.height/5, self.frame.size.height/5)];
            [self.uibtn setTitle:@"X" forState:UIControlStateNormal];
            [self.uibtn setTitle:@"Y" forState:UIControlStateHighlighted];
            [self.uibtn addTarget:self action:@selector(onBtnClickDelete) forControlEvents:UIControlEventTouchUpInside];
            self.uibtn.backgroundColor=[UIColor grayColor];
            self.uibtn;
        })];
}
    return self;
}
-(void)layoutTableviewCell{
    self.viewlabel.text=@"图片";
    self.sharelabel.text=@"分享";
    [self.sharelabel sizeToFit];
    self.commentlabel.text=@"评论";
    [self.commentlabel sizeToFit];
    self.commentlabel.frame=CGRectMake(self.sharelabel.frame.origin.x+self.sharelabel.frame.size.width+150, self.commentlabel.frame.origin.y, self.commentlabel.frame.size.width,self.commentlabel.frame.size.height);
    self.zanlabel.text=@"评论";
    [self.zanlabel sizeToFit];
    self.zanlabel.frame=CGRectMake(self.commentlabel.frame.origin.x+self.commentlabel.frame.size.width+150, self.zanlabel.frame.origin.y, self.zanlabel.frame.size.width,self.zanlabel.frame.size.height);
    
    self.infoimageview.image=[UIImage imageNamed:@"icon.bundle/bottom_tabbar_followinghome_normal@2x.png"];
    self.uibtn.frame=CGRectMake(self.frame.size.width*9/10, self.frame.origin.y, self.uibtn.frame.size.width,self.uibtn.frame.size.height);
}
-(void)onBtnClickDelete{
    NSLog(@"delete");
}

@end
