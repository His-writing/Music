//
//  AppDelegate.m
//  Music
//
//  Created by ShenzhenGuo on 13-11-5.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import "AppDelegate.h"
#import "MusicViewController.h"

#import "Navbar.h"
// iPhone5 兼容
#define IPHONE_HEIGHT [UIScreen mainScreen].bounds.size.height



@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    

// [application setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
  
    
    
    
    
    MusicViewController *music=[[MusicViewController alloc]init];
    
    
    [music initlize];

    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    
    if ([user boolForKey:@"guideOne"] == NO) {
        
        //        UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,320 , 460)];
        //        UIImageView *imageBac = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bacgrund"]];
        //        [imageBac setFrame:CGRectMake(0, 0, 320, 460)];
        //        [firstView  addSubview:imageBac];
        //
        
        
        UIScrollView *firstView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320, 234234)];
        firstView.pagingEnabled = YES;
        
        
        for (int i=0; i<3; i++) {
            UIImageView *imageBac = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i+1]]];
            [imageBac setFrame:CGRectMake(320*i, 0, 320, 520)];
            [firstView  addSubview:imageBac];
        }
        
        
        CGSize newSize = CGSizeMake(music.view.frame.size.width * 2,  music.view.frame.size.height);
        [firstView setContentSize:newSize];
        
        [music.view addSubview: firstView];
        
        UIButton *button = [[UIButton alloc] init];
        [button setFrame:CGRectMake(firstView.frame.size.width+105
                                    , 440, 110, 40)];
        [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [button setBackgroundColor:[UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0]];
        [firstView  addSubview:button];
        [music.view addSubview:firstView];
        [user setBool:YES forKey:@"guideOne"];
        [user synchronize];

    
    
    }
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithNavigationBarClass:[Navbar class] toolbarClass:nil];
    nav.viewControllers = @[music];

    
   self.window.rootViewController=nav;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, IPHONE_HEIGHT)];
    /*Chino  */
    if([UIScreen mainScreen].bounds.size.height == 480){
        
        imgView.image = [UIImage imageNamed:@"Default"];
        
    }else{
        imgView.image = [UIImage imageNamed:@"Default@2x"];
        
    }
    [self.window addSubview:imgView];
    [self performSelector:@selector(splashWithImageView) withObject:nil afterDelay:0.0];
    

    return YES;
}

// 淡入淡出效果
- (void)splashWithImageView {
    imgView.hidden = YES;
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 1.0f;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeForwards;
    animation.type = kCATransitionFade; // @"rippleEffect", @"pageCurl";
    [imgView.layer addAnimation:animation forKey:@"animation"];
    
    [self performSelector:@selector(removeImgView) withObject:nil afterDelay:4];
}
- (void)removeImgView
{
    [imgView removeFromSuperview];
}

-(void)click:(UIButton*)sender {
    
    [[sender  superview] removeFromSuperview];
    
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
