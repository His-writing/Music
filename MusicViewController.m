//
//  MusicViewController.m
//  Music
//
//  Created by ShenzhenGuo on 13-11-5.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import "MusicViewController.h"

#import "QYYLgoogleLib.h"
#import "Navbar.h"
static  int index1;

@interface MusicViewController ()

@end

@implementation MusicViewController
@synthesize playBtn;
@synthesize soundSlider;
@synthesize soundSider1;
@synthesize totalTimeLable;
@synthesize currentTimeLable;
@synthesize tableView;
@synthesize LRCTableView;

-(void)initlize{
    
    [[QYYLgoogleLib getQYYLGooglelib]initHomeViewController:self QYYLGoogleBannerViewAdUnitID:@"" interstitialAdUnitID:@"" bannerY:0 bannerX:0];
    
    
    
    
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADBannerView];
    
    
}


//初始化数据
-(void)initData:(NSUInteger)index{
    
    
    
    //    Music *music1=[[Music alloc]initWithName:@"高进、小沈阳 - 我的好兄弟" ];
    //    Music *music2=[[Music alloc]initWithName:@"小虎队 - 爱"];
    //    Music *music3=[[Music alloc]initWithName:@"当爱失去了默契"];
    //    Music *music4=[[Music alloc]initWithName:@"兄弟干杯"];
    //
    //    Music *music5=[[Music alloc]initWithName:@"为爱痴狂"];
    //
    
    
    
    
    
    musicArray=[[NSMutableArray alloc]initWithCapacity:5];
    
    
    [musicArray addObject:@"高进、小沈阳 - 我的好兄弟"];
    [musicArray addObject:@"当爱失去了默契"];
    [musicArray addObject:@"兄弟干杯"];
    [musicArray addObject:@"为爱痴狂"];
    
    
    currentMusic=[musicArray objectAtIndex:index];
    
    
    [self avaudioPlayerA];
    
    
    
    
    //  currentMusic=music1;
    
}

-(void)avaudioPlayerA{
    avaudioPlayer=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL  fileURLWithPath:[[NSBundle mainBundle]pathForResource:currentMusic ofType:@"mp3"]] error:nil];
    //音量
    avaudioPlayer.volume =  soundSider1.value;
    //播放器可以控制速率
    avaudioPlayer.enableRate = YES;
    soundSlider.maximumValue = avaudioPlayer.duration;


}

//获取歌词
-(void)initLRC
{
    NSLog(@"%@",currentMusic);
    
    //获取歌词
    NSString *LRCPath=[[NSBundle mainBundle]pathForResource:currentMusic ofType:@"txt"];
    NSString *contentStr=[NSString stringWithContentsOfFile:LRCPath encoding:NSUTF8StringEncoding error:nil];
    
    //解析lrc
    //分割数组
    NSArray *array= [contentStr componentsSeparatedByString:@"\n"];
    
    //从第四行开始
    for (int i=4; i<[array count]; i++) {
        
        NSString *lineStr=[array objectAtIndex:i];
        
        //获取]外的值
        NSArray *lineArray=[lineStr componentsSeparatedByString:@"]"];
        
        if ([[lineArray objectAtIndex:0]length]>5) {
            
            //获取歌词字符串
            NSString *lrcStr= [lineArray objectAtIndex:1];
            
            //获取[]里的 00：06
            NSString *timeStr=[[lineArray objectAtIndex:0]substringWithRange:NSMakeRange(1, 5)];
            
            [LRCDictionary setObject:lrcStr forKey:timeStr];
            [timeArray addObject:timeStr];
        }
        
        
        
    }
    
    [LRCTableView reloadData];
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewWillDisappear:(BOOL)animated
{

    
    Navbar *bar = (Navbar *)self.navigationController.navigationBar;
    bar.cusBarStyele = UIBarStyleBlackOpaque;
    bar.stateBarColor = [UIColor blackColor];
    
    
    [super viewWillDisappear:animated];
    
}


- (void)viewWillAppear:(BOOL)animated
{
    
    //总时间
    NSDate *date1 = [NSDate dateWithTimeIntervalSinceReferenceDate:avaudioPlayer.duration-avaudioPlayer.currentTime];
    NSString *totalTime = [_dateFormatter stringFromDate:date1];
    totalTimeLable.text = totalTime;


    
    
    if ([self.navigationController.viewControllers indexOfObject:self]==1) {
        Navbar *bar = (Navbar *)self.navigationController.navigationBar;
        bar.cusBarStyele = UIBarStyleDefault;
        bar.stateBarColor = [UIColor whiteColor];
    }
    
    [super viewWillAppear:animated];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
  
    
    // Do any additional setup after loading the view from its nib.
    
    //    意思就是UINavigationBar的高度会自行调整为44或者64，没有确定的预测方法。而之前作为UINavigationBar背景的图片是44高度的。最后换了张64高度，上面留了20px透明的图片搞定
    //
    
    //    CGRect bounds = self.view.bounds;
    //    bounds.size.height -= 64.f;
    //
    //    self.navigationController.navigationBar.translucent = YES;
    //
    //    self.view.bounds=bounds;
    //
    
    currentTimeLable.textColor=[UIColor whiteColor];
    
    totalTimeLable.textColor=[UIColor whiteColor];
    
    LRCTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.navigationItem.title=@"财经音乐";
    //
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg_image"] forBarMetrics:UIBarMetricsDefault];
    //
    
    
    isPlay=YES;
    tableHidden=YES;
    //隐藏tableView
    tableView.hidden=YES;
    [self   initData:0];
    
    
    
    UIButton *btn=[UIButton buttonWithType:0];
    
    btn.frame=CGRectMake(0, 0, 40, 40);
    
    // [btn setBackgroundImage:<#(UIImage *)#> forState:<#(UIControlState)#>]
    
    [btn setTitle:@"列表" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showTableView) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
    
    //格式化时间
    _dateFormatter = [[NSDateFormatter alloc]init];
    [_dateFormatter setDateFormat:@"mm:ss"];

    
    timeArray =[[NSMutableArray alloc]initWithCapacity:10];
    LRCDictionary=[[NSMutableDictionary alloc]initWithCapacity:10];
    
    //歌词
    [self initLRC];
    
    
    
    
}


-(void)displaySongWord:(NSUInteger)time
{
    
    //分钟转换秒
    NSArray *array=[[timeArray objectAtIndex:index1]componentsSeparatedByString:@":"];
    
    NSUInteger currentTim=[[array objectAtIndex:0]intValue]*60+[[array objectAtIndex:1]intValue];
    
    //比较时间
    if (time==currentTim) {
        
        [self updateLrcTableView:index1];
        
        
        index1++;
        
    }
}

//到时间后调用
-(void)updateLrcTableView:(NSUInteger)index
{
    
    NSLog(@"%lu",(unsigned long)index);
    
    NSLog(@"%@",[LRCDictionary objectForKey:[timeArray objectAtIndex:index1]]);
    
    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:index1 inSection:0];
    //返回当前所选的Cell
    [LRCTableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
    
}

//点击显示歌单
-(void)showTableView{
    
    if (tableHidden) {
        
        tableView.hidden=NO;
        tableHidden=NO;
    }else{
        tableView.hidden=YES;
        tableHidden=YES ;
        
        
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//上一曲

- (IBAction)aboveMusic:(id)sender {
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];

    
    
    if([musicArray indexOfObject:currentMusic] > 0)
        
    {
        [avaudioPlayer stop];
        
//        currentMusic = [musicArray objectAtIndex:[musicArray indexOfObject:currentMusic]-1];
        
       
        [self initData:[musicArray indexOfObject:currentMusic]-1];
        
        [self initLRC];
        
        if (!avaudioPlayer.isPlaying) {
            [avaudioPlayer play];
            
            [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
            
        }
        
        
        [self  scrollTableToFoot:YES];
        
        [timer  invalidate];
        if (index1!=0) {
            index1=0;
            
        }
        
        
        timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
        
        
        

        
        //  [self clickButton];
        
    }else
    {
        [avaudioPlayer stop];
        
        
        
       // currentMusic = [musicArray objectAtIndex:[musicArray count]-1];
      
        
        [self initData:[musicArray count]-1];
        
        [self initLRC];
        
        if (!avaudioPlayer.isPlaying) {
            [avaudioPlayer play];
            
            [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
            
        }
        
        
        [self  scrollTableToFoot:YES];
        
        [timer  invalidate];
        if (index1!=0) {
            index1=0;
            
        }
        
        
        timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
        }
    
    
    
    
}
//下一曲

- (IBAction)blow:(id)sender {
    
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];

    if([musicArray indexOfObject:currentMusic] < [musicArray count]-1)
    {
        [avaudioPlayer stop];
        
//     currentMusic = [musicArray objectAtIndex:[musicArray indexOfObject:currentMusic]+1];
//        
        
        [self initData:[musicArray indexOfObject:currentMusic]+1];
        
        [self initLRC];
        
        if (!avaudioPlayer.isPlaying) {
            [avaudioPlayer play];
            
            [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
            
        }
        
        
        [self  scrollTableToFoot:YES];
        
        [timer  invalidate];
        if (index1!=0) {
            index1=0;
            
        }
        
        
        timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
        
        
        

        
      //  [self clickButton];
        
        
    }else{
        [avaudioPlayer stop];
        
        currentMusic = [musicArray objectAtIndex:0];
       // [self clickButton];
        
        
        [self initData:0];
        
        [self initLRC];
        
        if (!avaudioPlayer.isPlaying) {
            [avaudioPlayer play];
            
            [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
            
        }
        
        
        [self  scrollTableToFoot:YES];
        
        [timer  invalidate];
        if (index1!=0) {
            index1=0;
            
        }
        
        
        timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
        


        
        
    }
    
    
    
}
//- (void)clickButton
//{
//    //mp3路径
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:currentMusic ofType:@"mp3"];
//    //生成一个NSURL
//    NSURL *url = [[NSURL alloc]initFileURLWithPath:filePath];
//    //初始化播放器
//    avaudioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
//    avaudioPlayer.delegate = self;
//    //音量
//    avaudioPlayer.volume = soundSider1.value;
//    //播放器可以控制速率
//    avaudioPlayer.enableRate = YES;
//    
//    //滑动条的最大值
//    soundSlider.maximumValue = avaudioPlayer.duration;
//    
//    //播放
//    [avaudioPlayer play];
//    
//}


//刷新时间
-(void)showTime
{
//    
//    if ((int )avaudioPlayer.currentTime%60<10) {
//        currentTimeLable.text=[NSString stringWithFormat:@"%d:0%d",(int)avaudioPlayer.currentTime/60,(int )avaudioPlayer.currentTime%60];
//    }else{
//        
//        currentTimeLable.text=[NSString stringWithFormat:@"%d:%d",(int)avaudioPlayer.currentTime/60,(int)avaudioPlayer.currentTime%60];
//    }
    
////    //音乐进度
//   soundSlider.value=avaudioPlayer.currentTime/avaudioPlayer.duration;
//   

    
    soundSlider.value = avaudioPlayer.currentTime;
    
    //获取当前播放时间
    NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:avaudioPlayer.currentTime];
    
    NSString *currentTime = [_dateFormatter stringFromDate:date];
    
    currentTimeLable.text = currentTime;
    
    //总时间
    NSDate *date1 = [NSDate dateWithTimeIntervalSinceReferenceDate:avaudioPlayer.duration-avaudioPlayer.currentTime];
    NSString *totalTime = [_dateFormatter stringFromDate:date1];
    totalTimeLable.text = totalTime;

    
    //当前的时间
    [self displaySongWord:avaudioPlayer.currentTime];
    
    
    
}
//播放

- (IBAction)play:(id)sender {
    
    
    
    if (!avaudioPlayer.isPlaying) {
       
        [avaudioPlayer play];
        // [playBtn setBackgroundImage:@"" forState:UIControlStateNormal];
        [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
    }else
    {
        
        [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];

        [avaudioPlayer pause];
        [playBtn setTitle:@"播放" forState:UIControlStateNormal];
        
        
    }
    
    
    
//    //获取AV的总时间
//    //总时长duration
//    totalTimeLable.text=[NSString stringWithFormat:@"%d:%d",(int)avaudioPlayer.duration/60,(int)avaudioPlayer.duration%60];
//    
    [timer  invalidate];
    
    
    if (index1!=0) {
        index1=0;
        
    }

    timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
    
    
    
    
    
    
}
//播放进度的方法
- (IBAction)progressChange:(id)sender {
    
    
    
    //获取当前播放时间
    NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:avaudioPlayer.currentTime];
    
    NSString *currentTime = [_dateFormatter stringFromDate:date];
    
    currentTimeLable.text = currentTime;
    
    //总时间
    NSDate *date1 = [NSDate dateWithTimeIntervalSinceReferenceDate:avaudioPlayer.duration-avaudioPlayer.currentTime];
    NSString *totalTime = [_dateFormatter stringFromDate:date1];
    totalTimeLable.text = totalTime;

   
    
    avaudioPlayer.currentTime = soundSlider.value;
    
    

    

    
    

}
//暂停

- (IBAction)stop:(id)sender {
    [[QYYLgoogleLib getQYYLGooglelib]QYYLGADInterstitial];

    [avaudioPlayer stop];
}
//声音的改变

- (IBAction)soundChange:(id)sender {
    
    //AV的声音给进度条
    avaudioPlayer.volume=soundSider1.value;
    
}

//声音的关闭
- (IBAction)soundOff:(id)sender {
    
    soundSider1.value=0.0f;
    avaudioPlayer.volume=0.0f;
}

//声音的打开

- (IBAction)soundOn:(id)sender {
    
    avaudioPlayer.volume+=0.2f;
    
    //进度条的给AV的声音
    soundSider1.value=avaudioPlayer.volume;
}

- (NSInteger)tableView:(UITableView *)_tableView numberOfRowsInSection:(NSInteger)section{
    
    
    if (_tableView.tag==999) {
        return [musicArray count];
        
    }else{
        
        //歌词
        return [timeArray count];
        
        
    }
    
}

- (void)scrollTableToFoot:(BOOL)animated {
    
    NSInteger s = [LRCTableView numberOfSections];
	if (s<1) return;
	NSInteger r = [LRCTableView numberOfRowsInSection:0];
	if (r<1) return;
	
	NSIndexPath *ip = [NSIndexPath indexPathForRow:0 inSection:0];
	
	[LRCTableView scrollToRowAtIndexPath:ip atScrollPosition:UITableViewScrollPositionBottom animated:animated];
}


-(void)tableView:(UITableView *)_tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    if (_tableView.tag==999) {
        
        [self initData:indexPath.row];
        
        [self initLRC];
        
        if (!avaudioPlayer.isPlaying) {
            [avaudioPlayer play];
            
            [playBtn setTitle:@"暂停" forState:UIControlStateNormal];
            
        }
        
        
        [self  scrollTableToFoot:YES];
        
        [timer  invalidate];
        if (index1!=0) {
            index1=0;
            
        }

        
        timer= [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(showTime) userInfo:nil repeats:YES];
        
        
    }else{
        
        
        
        
        
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)_tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //歌单
    if (_tableView.tag==999) {
        
        static NSString *cellIdentifier=@"Cell";
        
        UITableViewCell *cell=[_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (cell==nil) {
            
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
            
        }
        
        NSString *name =[musicArray objectAtIndex:indexPath.row];
        
//        cell.frame=CGRectMake(0, 0, cell.frame.size.width, 5);
//        cell.textLabel.textAlignment=NSTextAlignmentLeft;
//        cell.textLabel.font=[UIFont systemFontOfSize:12];
        
        cell.textLabel.text=name;
        return cell;
        
    }else{
        
        static NSString *cellIdentifier=@"LRcCell";
        UITableViewCell *cell=[_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        
        if (cell==nil) {
            cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
            
        }
        
        //通过时间找字符串
        cell.textLabel.text=[LRCDictionary objectForKey:[timeArray objectAtIndex:indexPath.row]];
        
        
        //cell.selectionStyle=UITableViewCellSelectionStyleNone;
        
        return cell;
    }
    
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
    [self.view endEditing:YES];
}
@end
