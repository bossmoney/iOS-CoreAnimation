//
//  ViewController.m
//  iOS CoreAnimation
//
//  Created by BossMoney on 2017/2/21.
//  Copyright © 2017年 BossMoney. All rights reserved.
//

#import "ViewController.h"
#import "AnimationViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    NSArray *array;
}
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self UI];
    array=@[@"position",@"position.x",@"position.y",@"transform.rotation.x",@"transform.rotation.y",@"transform.rotation.z",@"scale",@"transform.translation.x",@"bounds.size",@"opacity",@"backgroundColor",@"cornerRadius",@"borderWidth",@"contents",@"shadowColor",@"shadowOffset",@"shadowOpacity",@"shadowRadius",@"正方形轨迹",@"圆形轨迹",@"转场渐变",@"转场覆盖",@"转场推出",@"转场揭开",@"转场私有rippleEffect",@"转场私有cube",@"转场私有pageCurl",@"转场私有suckEffect",@"弹簧动画",@"组合动画"];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)UI{
    UITableView *tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    [self.view addSubview:tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text=array[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AnimationViewController *animation=[[AnimationViewController alloc] init];
    animation.type=indexPath.row;
    [self.navigationController pushViewController:animation animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
