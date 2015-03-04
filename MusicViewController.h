//
//  MusicViewController.h
//  Music
//
//  Created by ShenzhenGuo on 13-11-5.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,AVAudioPlayerDelegate>

{
    AVAudioPlayer *avaudioPlayer;
    NSMutableArray *musicArray;
    BOOL isPlay;
    BOOL tableHidden;
    NSString *currentMusic;
    
    NSTimer *timer;
    NSMutableArray *timeArray;
    
    NSMutableDictionary *LRCDictionary;

    NSDateFormatter  *_dateFormatter;
}


-(void)initlize;

//显示进度 00:00
@property (weak, nonatomic) IBOutlet UILabel *currentTimeLable;

//4:00
@property (weak, nonatomic) IBOutlet UILabel *totalTimeLable;



//上一曲
- (IBAction)aboveMusic:(id)sender;

//下一曲
- (IBAction)blow:(id)sender;

//播放
@property (weak, nonatomic) IBOutlet UIButton *playBtn;
//播放
- (IBAction)play:(id)sender;

//播放进度的方法
- (IBAction)progressChange:(id)sender;

//播放进度
@property (weak, nonatomic) IBOutlet UISlider *soundSlider;
//暂停
- (IBAction)stop:(id)sender;

//声音的改变
@property (weak, nonatomic) IBOutlet UISlider *soundSider1;
- (IBAction)soundChange:(id)sender;

//歌单
@property (weak, nonatomic) IBOutlet UITableView *tableView;
//歌词
@property (weak, nonatomic) IBOutlet UITableView *LRCTableView;


//声音的关闭

- (IBAction)soundOff:(id)sender;

//声音的打开
- (IBAction)soundOn:(id)sender;


@end
