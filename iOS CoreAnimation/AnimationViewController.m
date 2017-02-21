//
//  AnimationViewController.m
//  iOS核心动画
//
//  Created by BossMoney on 2017/2/21.
//  Copyright © 2017年 BossMoney. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationViewController ()
@property(nonatomic,strong)UIImageView *top;
@property(nonatomic,strong)UIImageView *left;
@property(nonatomic,strong)UIImageView *right;
@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor grayColor];
    [self UI];
    // Do any additional setup after loading the view.
}

-(void)UI{
    UIImageView *top=[[UIImageView alloc] initWithFrame:CGRectMake(30, 30+64, [UIScreen mainScreen].bounds.size.width-60, 150)];
    top.image=[UIImage imageNamed:@"timg.jpg"];
    [self.view addSubview:top];
    self.top=top;
    
    UIImageView *left=[[UIImageView alloc] initWithFrame:CGRectMake(30, 30+64+160, [UIScreen mainScreen].bounds.size.width/2-30, 75)];
    left.image=[UIImage imageNamed:@"timg1.jpg"];
    [self.view addSubview:left];
    self.left=left;
    
    UIImageView *right=[[UIImageView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2, 30+64+160, [UIScreen mainScreen].bounds.size.width/2-30, 75)];
    right.image=[UIImage imageNamed:@"timg2.jpg"];
    [self.view addSubview:right];
    self.right=right;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    switch (self.type) {
        case 0:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position"];
            ani.duration=1.0f;
            ani.toValue = [NSValue valueWithCGPoint:self.top.center];
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.left.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 1:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position.x"];
            ani.duration=1.0f;
            ani.toValue = @(200);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.left.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 2:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"position.y"];
            ani.duration=1.0f;
            ani.toValue = @(200);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.left.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 3:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
            ani.duration=1.0f;
            ani.toValue = @(M_PI);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 4:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
            ani.duration=1.0f;
            ani.toValue = @(M_PI);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 5:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
            ani.duration=1.0f;
            ani.toValue = @(M_PI);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 6:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
            ani.duration=1.0f;
            ani.toValue = @(0.5);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 7:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
            ani.duration=1.0f;
            ani.toValue = @(100);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 8:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
            ani.duration=1.0f;
            ani.toValue = [NSValue valueWithCGSize:CGSizeMake(100, 100)];
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 9:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"opacity"];
            ani.duration=1.0f;
            ani.toValue = @(0);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 10:{
            self.top.image=nil;
            self.top.backgroundColor=[UIColor redColor];
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
            ani.duration=1.0f;
            ani.toValue = (__bridge id _Nullable)([UIColor blueColor].CGColor);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 11:{
            self.top.layer.masksToBounds=YES;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"cornerRadius"];
            ani.duration=1.0f;
            ani.toValue = @(75);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 12:{
            self.top.layer.masksToBounds=YES;
            self.top.layer.cornerRadius=75;
            self.top.layer.borderColor=[UIColor yellowColor].CGColor;
            self.top.layer.borderWidth=0;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"borderWidth"];
            ani.duration=1.0f;
            ani.toValue = @(10);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 13:{
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"contents"];
            ani.duration=1.0f;
            ani.toValue = (__bridge id _Nullable)([UIImage imageNamed:@"timg1.jpg"].CGImage);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 14:{
            self.top.layer.shadowColor=[UIColor redColor].CGColor;
            self.top.layer.shadowOffset=CGSizeMake(-10, -10);
            self.top.layer.shadowOpacity=1;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowColor"];
            ani.duration=1.0f;
            ani.toValue = (__bridge id _Nullable)([UIColor blueColor].CGColor);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 15:{
            self.top.layer.shadowColor=[UIColor redColor].CGColor;
            self.top.layer.shadowOffset=CGSizeMake(-10, -10);
            self.top.layer.shadowOpacity=1;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowOffset"];
            ani.duration=1.0f;
            ani.toValue = [NSValue valueWithCGSize:CGSizeMake(10, 10)];
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 16:{
            self.top.layer.shadowColor=[UIColor redColor].CGColor;
            self.top.layer.shadowOffset=CGSizeMake(-10, -10);
            self.top.layer.shadowOpacity=0;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
            ani.duration=1.0f;
            ani.toValue = @(1);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 17:{
            self.top.layer.shadowColor=[UIColor redColor].CGColor;
            self.top.layer.shadowOffset=CGSizeMake(-10, -10);
            self.top.layer.shadowOpacity=1;
            self.top.layer.shadowRadius=0;
            CABasicAnimation * ani = [CABasicAnimation animationWithKeyPath:@"shadowRadius"];
            ani.duration=1.0f;
            ani.toValue = @(10);
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.top.layer addAnimation:ani forKey:@"PostionAni"];
        }
            break;
        case 18:{
            CAKeyframeAnimation * ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
            ani.duration = 4.0;
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            NSValue * value1 = [NSValue valueWithCGPoint:CGPointMake(150, 200)];
            NSValue *value2=[NSValue valueWithCGPoint:CGPointMake(250, 200)];
            NSValue *value3=[NSValue valueWithCGPoint:CGPointMake(250, 300)];
            NSValue *value4=[NSValue valueWithCGPoint:CGPointMake(150, 300)];
            NSValue *value5=[NSValue valueWithCGPoint:CGPointMake(150, 200)];
            ani.values = @[value1, value2, value3, value4, value5];
            [self.top.layer addAnimation:ani forKey:@"PostionKeyframeValueAni"];
        }
            break;
        case 19:{
            CAKeyframeAnimation * ani = [CAKeyframeAnimation animationWithKeyPath:@"position"];
            CGMutablePathRef path = CGPathCreateMutable();
            CGPathAddEllipseInRect(path, NULL, CGRectMake(130, 200, 100, 100));
            ani.path = path;
            CGPathRelease(path);
            ani.duration = 4.0;
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            [self.top.layer addAnimation:ani forKey:@"PostionKeyframePathAni"];
        }
            break;
        case 20:{
            CATransition * ani = [CATransition animation];
            ani.type = kCATransitionFade;
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 21:{
            CATransition * ani = [CATransition animation];
            ani.type = kCATransitionMoveIn;
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 22:{
            CATransition * ani = [CATransition animation];
            ani.type = kCATransitionPush;
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 23:{
            CATransition * ani = [CATransition animation];
            ani.type = kCATransitionReveal;
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 24:{
            CATransition * ani = [CATransition animation];
            ani.type = @"rippleEffect";
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 25:{
            CATransition * ani = [CATransition animation];
            ani.type = @"cube";
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 26:{
            CATransition * ani = [CATransition animation];
            ani.type = @"pageCurl";
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 27:{
            CATransition * ani = [CATransition animation];
            ani.type = @"suckEffect";
            ani.subtype = kCATransitionFromLeft;
            ani.duration = 1.5;
            self.top.image = [UIImage imageNamed:@"timg1.jpg"];
            [self.top.layer addAnimation:ani forKey:@"transitionAni"];
        }
            break;
        case 28:{
            CASpringAnimation * ani = [CASpringAnimation animationWithKeyPath:@"bounds"];
            ani.mass = 10.0; //质量，影响图层运动时的弹簧惯性，质量越大，弹簧拉伸和压缩的幅度越大
            ani.stiffness = 5000; //刚度系数(劲度系数/弹性系数)，刚度系数越大，形变产生的力就越大，运动越快
            ani.damping = 100.0;//阻尼系数，阻止弹簧伸缩的系数，阻尼系数越大，停止越快
            ani.initialVelocity = 5.f;//初始速率，动画视图的初始速度大小;速率为正数时，速度方向与运动方向一致，速率为负数时，速度方向与运动方向相反
            ani.duration = ani.settlingDuration;
            ani.toValue = [NSValue valueWithCGRect:self.top.bounds];
            ani.removedOnCompletion = NO;
            ani.fillMode = kCAFillModeForwards;
            ani.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.left.layer addAnimation:ani forKey:@"boundsAni"];
        }
            break;
        case 29:{
            CABasicAnimation * posAni = [CABasicAnimation animationWithKeyPath:@"position"];
            posAni.toValue = [NSValue valueWithCGPoint:self.top.center];
            
            CABasicAnimation * opcAni = [CABasicAnimation animationWithKeyPath:@"opacity"];
            opcAni.toValue = [NSNumber numberWithFloat:1.0];
            opcAni.toValue = [NSNumber numberWithFloat:0.7];
            
            CABasicAnimation * bodAni = [CABasicAnimation animationWithKeyPath:@"bounds"];
            bodAni.toValue = [NSValue valueWithCGRect:self.top.bounds];
            
            CAAnimationGroup * groupAni = [CAAnimationGroup animation];
            groupAni.animations = @[posAni, opcAni, bodAni];
            groupAni.duration = 1.0;
            groupAni.fillMode = kCAFillModeForwards;
            groupAni.removedOnCompletion = NO;
            groupAni.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            [self.left.layer addAnimation:groupAni forKey:@"groupAni"];
        }
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
