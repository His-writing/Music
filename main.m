//
//  main.m
//  Music
//
//  Created by ShenzhenGuo on 13-11-5.
//  Copyright (c) 2013年 ShuzhenGuo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

//0001
//MVC模式:（model＋view＋controller）：是一种帮你把代码功能和显示划分出来的设计模式；
//0002
//model：较为底层的数据引擎，负责管理实体中所继承的数据；
//0003
//view：和用户交互界面；
//0004
//controller：连接二者的桥梁；
//0005
//cocoa frameworks 有两个框架：
//0006
//foundation
//0007
//foundation  是cocoa中最基本的一些类；再mac应用程序中负责对象管理，内存管理，容器等相关数据；
//0008
//uikit：
//0009
//uikit：为程序提供可视化的底层构架，包括窗口，视图，控件类和管理这些对象的控制器。这一层中的其它框架允许你访问用户联系人和图片信息，以及设备上的加速器和其它硬件特征；
//0010
//code4app.com
//0011
//UI（User Interface）编程
//0012
//9.3第八周，周一
//0013
//创建ios项目
//0014
//1.打开iOS中的application；
//0015
//2.UIViewController:视图控件，通过点击，触摸来控制程序
//0016
//3.UIView :视图；
//0017
//4.在项目中创建一个文件。在 iOS的cocoa touch创建一个
//0018
//ulviewcontrollersubclass类然后在AppDelegate.m中找到application函数，在 self.window.backgroundColor = [UIColor whiteColor];后写如下代码
//0019
//RootViewCotroller *rvc=[[RootViewCotroller alloc]initWithNibName:@"RootViewCotroller" bundle:nil];
//0020
//self.window.rootViewController=rvc;
//0021
//[rvc release];
//0022
//代码含义：创建根控件,并把新创建的根控件赋值给窗口的根控件；注意释放；
//0023
//5.label控件的创建和属性：
//0024
//可以用视图界面创建；然后修改属性；
//0025
//6.代码实现label
//0026
//1.IBOutlet  :是个宏。控件和根界面控件内容建立联系
//0027
//
//0028
//2.atomic：原子操作；线成保护；就是在几个线程中调用同一段内容时导致所用内容混乱，进行枷锁机制
//0029
//nonatomic：不加锁机制;能提高效率；
//0030
//把控件打包，并和界面添加的控件建立联系：
//0031
//
//0032
//3.在RootViewCotroller.m文件中在viewDidLoad（加载函数）函数中设置lable的属性；
//0033
//4.iPhone 横向320 竖向480 横条占20； 所以一般是320*460
//0034
//创建给label并在屏幕上定位
//0035
//CGRect rect={0,100,100,40};
//0036
//／／创建定位结构体；
//0037
//坐标原点是左上角；四个参数分别是距左框的距离；距上框的距离；label控件的宽度，高度；
//0038
//UILabel *label=[[UILabel alloc] initWithFrame:rect];
//0039
//UILabel *label=[[UILabel alloc]
//                0040
//                可一直接生成UIrect;
//                0041
//                initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)]
//0042
//
//0043
//5.UIView  * 指所有可视控件；
//0044
//6.设置背景色
//0045
//[label1 setBackgroundColor:[UIColor blueColor]];
//0046
//7.设置label的字体；
//0047
//[label2 setFont:[UIFont systemFontOfSize:20]];
//0048
//label1.font=[UIFont italicSystemFontOfSize:30];
//0049
//
//0050
//8.设置字体的颜色
//0051
//label2.textColor=[UIColor redColor];
//0052
//9.设置字体的对齐方式；
//0053
//label1.textAlignment=UITextAlignmentLeft;
//0054
//10.自动调整字体
//0055
//label1.adjustsFontSizeToFitWidth=YES;
//0056
//当文字数量多时可以自动调整字体大小
//0057
//如果不设置就会变成省略；
//0058
//
//0059
//字体省略方式：
//0060
//label2.lineBreakMode=UILineBreakModeHeadTruncation;
//0061
//这个是截去头，还有尾截，和中间截去；
//0062
//label2.lineBreakMode=UILineBreakModeClip;
//0063
//表示在已有控件写多少是多少，不写省略符
//0064
//
//0065
//label1.lineBreakMode=UILineBreakModeCharacterWrap;
//0066
//字符换行，指只要需要换行就换行不考虑单词的整体性；
//0067
//label1.lineBreakMode=UILineBreakModeWordWrap;
//0068
//以一个整个单词换行，不允许把整个单词分开写到不同的行；保持单词完整性；
//0069
//
//0070
//设置自动调整的最小限制
//0071
//label1.minimumFontSize=10;
//0072
//11.设置行数：
//0073
//label1.numberOfLines=3;
//0074
//注：如果行高不够的话它不能显示完整；
//0075
//字体省略方式
//0076
//12.设置高亮颜色
//0077
//label1.highlightedTextColor=[UIColor whiteColor];
//0078
//设置高亮的状态时的颜色；
//0079
//label1.highlighted=YES;
//0080
//把label设置为高亮状态；
//0081
//13.设置阴影色
//0082
//label1.shadowColor=[UIColor blackColor];
//0083
//设置阴影颜色；
//0084
//label1.shadowOffset=CGSizeMake(-2,-2 );//只有长和宽 没有   起始位置
//0085
//设置阴影位置；是相对字体的位置；
//0086
//14.IOPhone的图标默认大小时57*57；
//0087
//
//0088
//
//0089
//9.4周二
//0090
//1. IBAction 时void型的，为了连接某个触发；
//0091
//2.button创建
//0092
//button1=[UIButton buttonWithType:UIButtonTypeRoundedRect]
//0093
//注：这样创建的button不是alloc出来的不用释放；
//0094
//后面参数时button 的外观；
//0095
//3.button设置位置：
//0096
//button1.frame=CGRectMake(120, 280, 80, 40);
//0097
//4.button 设置title
//0098
//[button1 setTitle:@"click here" forState:UIControlStateNormal];
//0099
//注：由于button继承view control所以它可以设置状态；
//0100
//状态的作用？
//0101
//答：可以在不同状态下展示不同的button 特点；
//0102
//1.高亮状态下设置
//0103
//[button1 setTitle:@"click ready" forState:UIControlStateHighlighted];
//0104
//2.禁用状态设置
//0105
//[button1 setTitle:@"forbid using" forState:UIControlStateDisabled];
//0106
//button1.enabled=NO;
//0107
//button设置成不可用，但是还可以更改button 的属性
//0108
//5.  设置button的title的属性；
//0109
//button1.titleLabel.font=[UIFont systemFontOfSize:20];
//0110
//注：button是复合了label所以可以调用title label,设置它的 文本属性就是设置button的文本属性；
//0111
//6设置       颜色
//0112
//[button1 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
//0113
//7.给button添加事件
//0114
//[button1 addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
//0115
//addTarget:指触发的对象； action：触发的事件； forControlEvets:是表示如何点击按钮触发；
//0116
//8.局部声明button,如何使用button使其执行动作；
//0117
//在事件函数头传递button对象；谁调用它就传递谁的地址；
//0118
//－（void）onclick：（UIButton *）seder
//0119
//[button addTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchUpInside];
//0120
//注意：传递调用函数带参数有冒号；
//0121
//9.添加图片
//0122
//UIImage *image=[UIImage imageNamed:@"03.gif"];
//0123
//[button setBackgroundImage:image forState:UIControlStateNormal];
//0124
//[button setBackgroundImage:image1 forState:UIControlStateHighlighted];
//0125
//10.得到图片大小
//0126
//CGSize size=image.size;
//0127
//NSLog(@"%f %f",size.width,size.height);
//0128
//
//0129
//11.让button一直处于选择状态；
//0130
//button.selected=YES;
//0131
//button会一直处于一个状态而不改变? 到底什么意思
//0132
//12.  判断button状态执行操作；
//0133
//if(button.state==UIControlStateNormal){
//    0134
//    
//    0135
//}
//0136
//13.移出事件
//0137
//[sender removeTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchDragOutside];
//0138
//14.点击滑动的妙用；可以在作程序时加入实现触屏效果；
//0139
//[button addTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchDragInside];
//0140
//[button addTarget:self action:@selector(onclick:) forControlEvents:UIControlEventTouchDragOutside];
//0141
//
//0142
//9.6周四
//0143
//UIView （视图）
//0144
//1.什么是uiview
//0145
//在应用程序中看的见摸的着的是视图。相当于java中容器；
//0146
//viewController相当于底板；
//0147
//2.创建视图
//0148
//UIView *view=[[UIView alloc] initWithFrame:CGRectMake(20, 20, 280, 420)];
//0149
//3.将视图添加到父视图
//0150
//[self.view addSubview:view];
//0151
//注意：子视图是父视图的子类，后添加的视图在最上曾；
//0152
//4.在视图view中添加label（label 是view的子类）
//0153
//[view addSubview:label];
//0154
//注：由于ui中的控件都是视图，所以可以在任意视图加载其他视图；
//0155
//把一些视图装到另一个视图是为了保证视图的整体性；
//0156
//注：在button上添加label点击label就是点击button label相当于透明；而在上添button就是点谁谁响应；
//0157
//5.
//0158
//CGRectframe :坐标
//0159
//CGRectbounds：边界
//0160
//button.bounds=CGRectMake(0, 0, 50, 50);
//0161
//CGPointcenter：中点
//0162
//该是图的中点在父视图的相对坐标；
//0163
//button.center=CGPointMake(160, 230);
//0164
//指视图的中心位置在父视图的相对位置
//0165
//得到视图的终点坐标：
//0166
//button.center.x;
//0167
//button.center.y;
//0168
//6.视图层次
//0169
//视图子类是个数组；
//0170
//视图先添加的在下，后添加在上；
//0171
//交换视图位置：
//0172
//[button1 exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
//0173
//1.遍历视图
//0174
//for (UILabel * l in button1.subviews) {
//    0175
//    l.text=[NSString stringWithFormat:@"%d",i++];
//    0176
//}
//0177
//2.插入视图
//0178
//[button1 insertSubview:label3 atIndex:1];
//0179
//将视图label3插入到视图button1的第二位；
//0180
//[button1 insertSubview:label2 aboveSubview:label1];
//0181
//将视图label2插到label1上；
//0182
//[button1 insertSubview:label1 belowSubview:label3];
//0183
//
//0184
//3.将视图从父类视图中移出；
//0185
//[label2 removeFromSuperview];
//0186
//4.[button1 delete:label2];
//0187
//5.将视图放到最上层 ；
//0188
//[button1 bringSubviewToFront:label1];
//0189
//注：写代码时把子视图写到一块，父视图写到一块
//0190
//6.把视图放到最上下层
//0191
//[button1 sendSubviewToBack:label1];
//0192
//7.判断某个视图是某个视图的子视图 返回类型是bool类型；
//0193
//[label1 isDescendantOfView:button1];
//0194
//7.tag 视图的标志； 可以标志视图。是set 和get函数，设置和取得可以用“.”操作
//0195
//button1.tag=1;
//0196
//8.label1.superview 表示label1的父视图；
//0197
//9. 隐藏视图 ：label1.hidden=YES; 默认为no。
//0198
//应用：可以让视图重叠换灯片放映，或动画；如果父视图隐藏，子视图也随之消失
//0199
//10.视图可能会超出父视图的范围；这时可以更改父视图边界属性裁减出边界  的子视图
//0200
//button1.clipsToBounds=YES;
//0201
//
//0202
//UIImageView
//0203
//
//0204
//1.初始化：
//0205
//UIImageView *imageview=[[UIImageView alloc] initWithImage:[UIImage     imageNamed:@"2.jpg"]];
//0206
//
//0207
//imageview.frame=CGRectMake(20, 20, 140, 220);
//0208
//imageview.contentMode=UIViewContentModeScaleAspectFit;
//0209
//让添加的图片按比例填充；
//0210
//3.imageview和label都不能触发事件 但是可以给他们添加事件
//0211
////点击事件   搞清楚是单击还是双击  来处理事件
//0212
////声明点击手势   初始化点击手势识别器
//0213
//当单击判断失败 在触发单击；先判断，不知道是单击还是双击
//0214
//
//0215
//UITapGestureRecognizer *tgr=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onclick)];//来添加事件
//0216
//tgr.numberOfTapsRequired=1;//区分单击还是双击
//0217
//tgr.numberOfTapsRequired=2；
//0218
//[tag addTarget:self action :@selecter(press:)];//事件
//0219
////创建敲击事件的接收器；
//0220
//[imageview addGestureRecognizer:tgr];//这个视图来响应，把手势加到视图上面
//0221
//4.
//0222
//imageview.UserInteractionEnabled=YES;
//0223
////是否能和用户交互；
//0224
//5.三中图片填充方式
//0225
//imageview.contentMode=UIViewContentModeScaleAspectFit;
//0226
//
//0227
//imageview.contentMode=UIViewContentModeScaleAspectFill;
//0228
////按比例添满会超出边界。所以如果超出可以裁减
//0229
//imageview.clipsToBounds=YES;
//0230
//imageview.contentMode=UIViewContentModeScaleToFill;
//0231
////添满
//0232
//6.创建视图还可以在appDelegate.m中的application中声明实现
//0233
//7.  子视图按某中形式随父视图扩大或缩小；不同的扩大缩小方式特点可以或
//0234
//labelsub.autoresizingMask=UIViewAutoresizingFlexibleWidth;
//0235
//labelsub.autoresizingMask=UIViewAutoresizingFlexibleWidth |     UIViewAutoresizingFlexibleHeight;
//0236
//控制视图按比例的开关；
//0237
//labelsub.autoresizesSubviews=NO;
//0238
//
//0239
//MVC:设计思想： model：内存数据 view ：可视控件；controller：控制代码；
//0240
//单例：从头到尾使用的类
//0241
//RootController *rvc=[[RootController alloc]initWithNibName:@"RootController" bundle:nil];//有xib文件时创建连接文件，以后最好没有xib文件，xib文件降低速度
//0242
//以后初始化要不创建xib文件初始化方法是：
//0243
//RootController *rvc=[[RootController alloc]init];
//0244
//kvo／kvc：？
//0245
//notification：？
//0246
//窗口：
//0247
//iphono内存占用量不超过20Mb
//0248
//全屏做法    1.记下此时的控件fram
//0249
//2.修改控件的大小，使其全屏
//0250
//3.把改图像拉到顶层；
//0251
//4.修改tag
//0252
//字体新设置：
//0253
//label.font=[UIFont fontWithName:@"宋体" size:30];
//0254
//
//0255
//timer
//0256
//1.创建定时器，一但创建就开始运行；
//0257
//NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(changLabel) userInfo:nil repeats:YES];
//0258
//2,定时器停止；一旦停止就释放，相当于release；
//0259
//[timer invalidate];
//0260
//3,打开定时器
//0261
//[timer fire]
//0262
//4.动画效果
//0263
//
//0264
//
//0265
//'
//0266
//UITextField:对话框  同样是个view
//0267
//
//0268
//1.创建
//0269
//UITextField *field=[[UITextField alloc] initWithFrame:CGRectMake(40, 20, 250, 60)];
//0270
//
//0271
//2.设置边框
//0272
//UITextField *field=[[UITextField alloc] initWithFrame:CGRectMake(40, 20, 250, 60)];
//0273
//3.在文本框后面设置清除键
//0274
//field.clearButtonMode=UITextFieldViewModeAlways;
//0275
//4.设置初始文本
//0276
//field.placeholder=@"username";
//0277
//5。设置文本变为隐藏；
//0278
//field.secureTextEntry=YES;
//0279
//6.设置textfield的自定义函数
//0280
//首先在.h文件中提交协议  <UITextFieldDelegate>
//0281
//这样就可以自定义textfield 函数；注：自定义函数如果是返回bool类型的函数说明这个函数是一个监听函数；自定义都是进行某些动作时自动调用；
//0282
//7.-(void)textFieldDidBeginEditing:(UITextField *)textField
//0283
//当文本框进入编辑模式时自动调用
//0284
//8.退出编辑模式时调用函数；
//0285
//-(void)textFieldDidEndEditing:(UITextField *)textField
//0286
//{
//    0287
//    ( (UILabel *)[self.view.subviews objectAtIndex:0]).text=textField.text;
//    0288
//    
//    0289
//}
//0290
//9.点击键盘上return后调用的函数
//0291
//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//0292
//10.关闭键盘函数；
//0293
//
//0294
//[textField resignFirstResponder];
//0295
//return NO;
//0296
//
//0297
//11.限定输入字符的长度函数
//0298
//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//0299
//{  ／／textfield表示谁调用该函数，
//    0300
//    
//    0301
//    if (string.length>0) //string 表示当前输入的字符；
//        0302
//        return textField.text.length<10;  ／／而textField.text的值是还没有加入刚输入的string
//    0303
//    return YES;
//    0304
//    
//    0305
//}
//0306
//
//0307
//
//0308
//9.10 第九周
//0309
//多控制器操作：
//0310
//一.多控制器间的切换；
//0311
//思想：1.在每个视图控制器界面添加按钮点击触发事件创建新的视图控制器；然后把当前控制器交给新建的控制器；
//0312
//2.在新建的视图控制器中等使用完该控制器后，把控制器释放；由于创建是在前一个控制器中释放的所以这里释放不是简单的release；
//0313
//方法：一  1.在父控制器中创建新控制器，并把但前的控制界面交给新控制器
//0314
//ViewController* vc2=[[ViewController2 alloc] init];
//0315
//vc2.view.frame=CGRectMake(0,0,320,460);
//0316
//[self.view addSubview:vc2.view];
//0317
//[self addChildViewController:vc2];
//0318
//注：由于这样vc2 是在原控制器上加载所以它会默认流出原视图导航栏，要想让新控制器全部占满屏幕就要更改视图的大小；
//0319
//2.  然后用完vc2在最后把vc2从原控制器中移出
//0320
//[self.view removeFromSuperview];
//0321
//[self removeFromParentViewController];
//0322
//注：由于创建vc2时原有的控制器可vc2关联，原有的view和vc2的view关联；所以在清理时得把这两项分别清理；
//0323
//注：这中添加清理的方法使用高版本；为了程序的适用性通常用第二种方法；
//0324
//二： 1.在父控制器中创建新控制器；并把当前的控制器设置为vc2，并添加动画效果
//0325
//ViewController* vc2=[[ViewController2 alloc] init];
//0326
//[self presentModalViewController:vc2 animated:YES];
//0327
////添加新的controller而且带动画效果；animated:是否要动画效果
//0328
//2 在用完vc2时移出该控制器；
//0329
//[self dismissModalViewControllerAnimated:YES];
//0330
////释放当前的controller
//0331
//动画效果：只要把新的位置改变放到这些代码之间；
//0332
//[UIView beginAnimations:nil context:nil];／／动画设置开始；
//0333
//[UIView setAnimationDuration:0.2];／／设置动画时间；
//0334
//text.frame=CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)／／对象的新状态；
//0335
//[ UIView commitAnimations];／／开始动画；
//0336
//9。11周二
//0337
//注：系统对象不开辟空间不能打印retaincount自己声明的类的对象不开辟空间可以打印retaincount
//0338
//导航条UINavigationBar
//0339
//1.导航条按钮初始化三种方法：
//0340
//1.普通初始化
//0341
//UIBarButtonItem *rigthButton=[[[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(click:)] autorelease];
//0342
//第一个参数是按钮标题；第二个参数是按钮的样式；第三个参数是触发事件调用那个类中的方法第四个参数是触发的事件
//0343
//2.用图片初始化
//0344
//UIBarButtonItem *rightButtton= [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"5.png"] style:UIBarButtonItemStylePlain target:self action:@selector(click:)];
//0345
//注：这样初始化的按钮有按钮框，图片存在按钮框里要想只显示图片要自定义按钮然后用按钮初始化；如第三种方法；
//0346
//3.自定义控件初始化
//0347
//
//0348
////自定义的透明按钮  上面一般是要加上图片 让后点击图片
//0349
//UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
//0350
//[button setImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal];
//0351
//创建button 按钮，样式设置为普通，也就是没有样式；
//0352
//button.frame=CGRectMake(0, 0, 30, 30);
//0353
//注：必须设置button 的frame否则不显示
//0354
//[button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
//0355
//给button添加事件
//0356
//UIBarButtonItem *rightButton=[[UIBarButtonItem alloc] initWithCustomView:button];
//0357
//初始化导航条button
//0358
//4.运用系统功能按钮初始化uibarbutton
//0359
//UIBarButtonItem *rightButton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(click:)];
//0360
//
//0361
//2.添加副标题//导航栏添加副标题
//0362
//self.navigationItem.prompt=@"subtile"; 导航条高度是44；
//0363
//3.把导航条按钮设置成数组；可多加按钮，按钮一多会把别的控件挤偏；但是不能覆盖；如果加的太多只能显示先加入的；
//0364
//self.navigationItem.rightBarButtonItems=[NSArray arrayWithObjects:<#(id), ...#>, nil]
//0365
//
//0366
//注：UIBarButtonItem 有些属性和unbutton不一样，UIBarButtonItem不能设置
//0367
////设置导航栏的颜色
//0368
//4.设置导航条色调
//0369
//// tintColor：色调  控制器的导航条 的    色调
//0370
//self.navigationController.navigationBar.tintColor=[UIColor purpleColor];
//0371
//5.颜色色透明度
//0372
//1.黑色透明度
//0373
//self.navigationController.navigationBar.barStyle=UIBarStyleBlackTranslucent;
//0374
//2.其他颜色透明度
//0375
//self.navigationController.navigationBar.translucent=YES;
//0376
//self.navigationController.navigationBar.alpha=0.8
//0377
//
//0378
//slider.frame=self.navigationController.navigationBar.bounds;//从边界开始设定大小
//0379
//重点
//0380
//6.更改导航条背景
//0381
////更改背景图片ios5.0以后的方法
//0382
////判断。如过是5.0以上的版本用以下方法；
//0383
//if (__IPHONE_OS_VERSION_MIN_REQUIRED>=__IPHONE_5_0) {
//    0384
//    
//    0385
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
//    0386
//}
//0387
//如果是5.0以下的可以创建类别
//0388
////通过类别创建图像
//0389
//@implementation UINavigationBar(Custom)
//0390
//-(void)drawRect:(CGRect)rect{
//    0391
//    UIImage *image=[UIImage imageNamed:@""];
//    0392
//    [image drawInRect:rect];
//    0393
//}
//0394
//7.隐藏导航条
//0395
//［self.navigationController setNavigationBarHidden:YES animated:YES];
//0396
//8.直接跳转到某页
//0397
//1.创建数组把控制页面全部加载进来；
//0398
//NSMutableArray *array=[NSMutableArray arrayWithArray:self.navigationController.viewControllers];
//0399
//2.设置跳转到哪页
//0400
//[self.navigationController popToViewController:[array objectAtIndex:0] animated:YES];
//0401
//能够设置的常项
//0402
//创建一个可变空数组；
//0403
//NSMutableArray *array1=[[NSMutableArray alloc]initWithCapacity:0];
//0404
//用数组设置navigationController的ViewControllers
//0405
////[self.navigationController setViewControllers:array];
//0406
//self.navigationController.viewControllers=array;
//0407
//9.在子导航条中去除自带得返回上一级得button
//0408
//self.navigationItem.hidesBackButton=YES;
//0409
//ToolBar工具条
//0410
//1.创建工具条：为单个viewcontroller添加toolbar
//0411
//UIToolbar *toobar=[[UIToolbar alloc] initWithFrame:CGRectMake(0,372,320, 44)];
//0412
//注：一定要注意创建导航条后当前的viewcontroller的坐标原点已经改变是加上导航条后的的高度；导航条的高度是44；
//0413
//toolbar.tintColor=[UIColor purpleColor];
//0414
//toolbar的颜色设置；和导航条设置一样；
//0415
//toobar.hidden=NO;
//0416
//注：toolbar的hidden属性默认是yes，所以加toolbar要把hidden设置为no；
//0417
//2.  在导航条中有toolbar属性；所以要想每页都加toolbar 就可以在这里把导航条的toolbar的hidden属性设置为no；
//0418
//];
//0419
//UINavigationController *nv=[[UINavigationController alloc]initWithRootViewController:vc];
//0420
//nv.toolbarHidden=NO;
//0421
//nv.toolbar.tintColor=[UIColor purpleColor];
//0422
//[nv setNavigationBarHidden:YES animated:YES];
//0423
//3.把按钮写成一个数组然后添加到toolbar
//0424
//[array addObject:button];
//0425
////设置viewcontroller的toolbar以数组初始化；
//0426
////toobar的button不能调整大小；
//0427
//// self.toolbarItems.
//0428
//[self setToolbarItems:array animated:YES];
//0429
//
//0430
//4.验证两个coloer属性；
//0431
//tinkcoloer:
//0432
//
//0433
//9.12 周三
//0434
////六个控件
//0435
//UISlider 滑条控件//滑动条控件
//0436
//滑条初始化：
//0437
//UISlider *sl=[[UISlider alloc]initWithFrame:CGRectMake(30, 60, 280, 30)];
//0438
//1.滑条的高度不用设置因为系统默认 ;但是可以设置背景图改变滑条的高度；具体看滑条的图片设置
//0439
//
//0440
//创建label用来显示滑动的数值
//0441
//UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
//0442
//view控件的tag属性可以作为区分视图的标志想查找它时可以在另一个函数中写
//0443
//UILabel *label=(UILabel *)[self.view viewWithTag:100];
//0444
//label.tag=100;
//0445
//
//0446
//设置滑条的最大值和最小值；
//0447
//sl.minimumValue=0.0;
//0448
//sl.maximumValue=20.0;
//0449
//
//0450
//给滑条添加事件，由于滑条的值是可变的所以监听它时用值改变事件监听，以后一般遇到值可以不断改变的view控件要用值改变事件监听；
//0451
//[sl addTarget:self action:@selector(valuechang:) forControlEvents:UIControlEventValueChanged];
//0452
//// 设置默认滑条位置；
//0453
//sl.value=10.0;
//0454
//设置大小端图像；
//0455
//sl.maximumValueImage=[UIImage imageNamed:@"5.png"];
//0456
//设置滑条轨迹的颜色
//0457
//sl.minimumTrackTintColor=[UIColor purpleColor];
//0458
//sl.maximumTrackTintColor=[UIColor redColor];
//0459
//sl.thumbTintColor=[UIColor greenColor];
//0460
//
//0461
////点击按钮分高亮状态和非高亮状态；所以要注意设置那个状态；
//0462
//[sl setThumbImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal];
//0463
//
//0464
////设置滑条的最大最小图像；注：1滑点滑动部分变大图像会被拉伸，如果图像到达原大小在压缩不会变化；2.如果滑条设置背景图片就会改变滑条的宽度，而且只能是改变minimumValueImag此时的图片高度就是滑条的高度；原因：因为滑条的大端是开始的占空间大小；显示的滑动进度是在原有基础上添加的所以大端改变整个滑条才会改变
//0465
//[sl setMinimumTrackImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal];
//0466
//[sl setMaximumTrackImage:[UIImage imageNamed:@"5.png"] forState:UIControlStateNormal];
//0467
//
//0468
//简单的滑条触发事件测试：滑条值的改变显示在label控件上；
//0469
//-(void)valuechang:(UISlider *)sender
//0470
//{
//    0471
//    UILabel *label=(UILabel *)[self.view viewWithTag:100];
//    0472
//    label.text=[NSString stringWithFormat:@"%.0f",sender.value];
//    0473
//}
//0474
//
//0475
//UISwitch：开关控件//创建开关控件
//0476
//初始化switch对象
//0477
//UISwitch * _swith=[[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
//0478
//给with添加事件注意 事件控制是UIControlEventValueChanged
//0479
//[_swith addTarget:self action:@selector(sw:) forControlEvents:UIControlEventValueChanged];
//0480
//设置with的打开时背景色
//0481
//_swith.onTintColor=[UIColor blackColor];
//0482
//注：不用设置switch的宽高。因为时系统默认；设置没有作用；
//0483
//给switch添加switch事件：状态改变一次触发一次
//0484
//-(void)sw:(UISwitch *)swith
//0485
//{
//    0486
//    if (switch.on==YES)
//        0487
//        NSLog(@"yes");
//    0488
//    else
//        0489
//        NSLog(@"no");
//    0490
//    
//    0491
//}
//0492
//
//0493
//
//0494
//UIActivityIndicatorView：加载缓控件
//0495
//
//0496
////加载缓冲页面；初始化
//0497
//UIActivityIndicatorView *aiv=[[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
//0498
//
//0499
//设置当停止时隐藏
//0500
//aiv.hidesWhenStopped=NO;
//0501
//设置旋转图标的样式。一共有三种
//0502
//aiv.activityIndicatorViewStyle=UIActivityIndicatorViewStyleWhiteLarge;
//0503
//设置缓冲图标的颜色   注：要先设置样式在设置颜色，因为样式是带颜色，能覆盖以前的颜色；
//0504
//aiv.color=[UIColor blueColor];
//0505
//缓冲图标开始，停止动画；
//0506
//[aiv startAnimating];
//0507
//[aiv stopAnimating];
//0508
//
//0509
//
//0510
//UIProgressView：进度条
//0511
//初始化进度条
//0512
//UIProgressView *pgv=[[UIProgressView alloc] initWithFrame:CGRectMake(50, 100, 220, 0)];
//0513
//设置进度条的tag属性；
//0514
//pgv.tag=100;
//0515
//pgv.progressViewStyle=UIProgressViewStyleBar;
//0516
////颜色设置
//0517
//pgv.progressTintColor=[UIColor purpleColor];
//0518
//pgv.trackTintColor=[UIColor blackColor];
//0519
////进度条图片设置
//0520
//pgv.progressImage=[UIImage imageNamed:@""];
//0521
//pgv.trackImage=[UIImage imageNamed:@""];
//0522
//／／用时间控制器模拟时间进度条；
//0523
//[NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(refresh:) userInfo:nil repeats:YES];
//0524
//／／用函数对进度条做试验
//0525
//-(void)refresh:(NSTimer *)timer
//0526
//{
//    0527
//    UIProgressView *pv=(UIProgressView *)[self.view viewWithTag:100];
//    0528
//    [pv setProgress:pv.progress+0.1 animated:YES];
//    0529
//    if (pv.progress==1) {
//        0530
//        NSLog(@"%d",[timer retainCount]);
//        0531
//        [timer invalidate];
//        0532
//        // [timer release];
//        0533
//        //注意在ui中运用封装好的函数生成的控件不要给他们release它有他自动释放或需要调用释放函数；所以不必管它
//        0534
//        NSLog(@"%d",[timer retainCount]);
//        0535
//    }
//    0536
//    
//    0537
//    UITextView 文本编辑器
//    0538
//    文本编辑器和文本框一样有代理函数在.h文件开头需引入；
//    0539
//    @interface ViewController : UIViewController<UITextViewDelegate>
//    0540
//    它的代理函数和文本框的基本相同，不同的有两个
//    0541
//    -(void)textViewDidChange:(UITextView *)textView:(UITextView *)textView
//    0542
//    -(void)textViewDidChangeSelection:(UITextView *)textView
//    0543
//    注：在调用代理函数时一定要textview的代理设置为调用函数所在的类；
//    0544
//    文本框的一些属性设置：
//    0545
//    1.初始化文本框
//    0546
//    UITextView *textView=[[UITextView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
//    0547
//    2.文本框的颜色，对齐方式，字体设置
//    0548
//    textView.textColor=[UIColor grayColor];
//    0549
//    textView.textAlignment=UITextAlignmentLeft;
//    0550
//    textView.font=[UIFont systemFontOfSize:30];
//    0551
//    3。自动纠错关闭；
//    0552
//    textView.autocorrectionType=NO;
//    0553
//    4.大写模式；除此之外还可以设置字母不大写；句首字母大写。单词开头字母大写；  textView.autocapitalizationType=UITextAutocapitalizationTypeAllCharacters;
//    0554
//    5.键盘模式：
//    0555
//    textView.keyboardType=UIKeyboardTypePhonePad;／／打电话模式
//    0556
//    textView.returnKeyType=UIReturnKeyGo;返回模式变为go
//    0557
//    ／／根据输入框需要输入的内容不同要设置键盘的样式
//    0558
//    
//    0559
//    
//    0560
//    UIStepper 计步器//创建一个计步器
//    0561
//    1.初始化
//    0562
//    //ValueChanged  点击是要用这种模式
//    0563
//    UIStepper *stepper=[[UIStepper alloc]initWithFrame:CGRectMake(100, 200, 100, 40)];
//    0564
//    2.给stepper添加触发事件，还是注意 forControlEvents:UIControlEventValueChanged的设置
//    0565
//    [stepper addTarget:self action:@selector(stepper:) forControlEvents:UIControlEventValueChanged];
//    0566
//    3.设置stepper的最大最小值
//    0567
//    stepper.minimumValue=0;
//    0568
//    stepper.maximumValue=50;
//    0569
//    4.
//    0570
//    //常按可以自动加默认是yes    长按就一直进行
//    0571
//    stepper.autorepeat=YES;//autorepeat是否连续的执行这一操作或者响应
//    0572
//    //最小和最大间循环；
//    0573
//    stepper.wraps=YES;
//    0574
//    //设置每次增长值
//    0575
//    stepper.stepValue=2;
//    0576
//    //设置按键时是否显示每次加的值；如果设为no常按键会加到走好几个步长的值
//    0577
//    stepper.continuous=NO;//continue单位时间内是否响应
//    0578
//    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(50, 50, 100, 50)];
//    0579
//    label.font=[UIFont systemFontOfSize:30];
//    0580
//    [self.view addSubview:label];
//    0581
//    label.tag=100;
//    0582
//    
//    0583
//    -(void)stepper:(UIStepper *)stepper
//    0584
//    {
//        0585
//        UILabel *label=(UILabel *)[self.view viewWithTag:100];
//        0586
//        label.text=[NSString stringWithFormat:@"%f",stepper.value];
//        0587
//        
//        0588
//    }
//    0589
//    
//    0590
//    UISegmentedControl 分段控制器；//创建分段控制器
//    0591
//    1.分段控制器初始化
//    0592
//    UISegmentedControl *sc=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"a",@"b",@"c",[UIImage imageNamed:@"5.png"], nil]];
//    0593
//    2 分段控制器设置frame
//    0594
//    sc.frame=CGRectMake(100, 100, 150, 40);
//    0595
//    3. 为分段控制器添加监听事件；
//    0596
//    [sc addTarget:self action:@selector(sc:) forControlEvents:UIControlEventTouchUpInside];
//    0597
//    //注这个触发事件监听是ValueChanged，为了监听按钮
//    0598
//    4。控制类型控制类型一共有四种；
//    0599
//    sc.segmentedControlStyle=UISegmentedControlStyleBordered;
//    0600
//    5。按钮自动弹起开启；默认是no；
//    0601
//    sc.momentary=YES;
//    0602
//    6。添加新按钮；可以是文字，或图像；
//    0603
//    [sc insertSegmentWithTitle:@"e" atIndex:3 animated:YES];
//    0604
//    [sc insertSegmentWithImage:<#(UIImage *)#> atIndex:<#(NSUInteger)#> animated:<#(BOOL)#>]
//    0605
//    7.在段控制器中区分点击那个按钮的个属性
//    0606
//    //一共有多少个按钮；
//    0607
//    int i=sc.numberOfSegments;
//    0608
//    //当前点击的按钮位置；
//    0609
//    int j=sc.selectedSegmentIndex;
//    0610
//    //移出当前点击的段；
//    0611
//    [sc removeSegmentAtIndex:j animated:YES];
//    0612
//    //移出所有的段；
//    0613
//    [sc removeAllSegments];
//    0614
//    
//    0615
//    UIGesture 手势事件
//    0616
//    1.移动手势
//    0617
//    1.创建移动手势的对象：
//    0618
//    UIPanGestureRecognizer *pan=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
//    0619
//    2.把此对象添加到操作的对象中；
//    0620
//    [imagview addGestureRecognizer:pan];
//    0621
//    3.实现移动对象的方法
//    0622
//    -(void)pan:(UIPanGestureRecognizer *)pan
//    0623
//    {
//        0624
//        CGPoint point=[pan translationInView:self.view];
//        0625
//        ／／这个函数是得到触点在屏幕上与开始触摸点的位移值
//        0626
//        imagview.center=CGPointMake(imagview.center.x+point.x, imagview.center.y+point.y);
//        0627
//        ／／让图像的中心位置变化；中心变化图像位置就移动了 ，但是注意位移时如果不清空translation就会多移动一倍；所以每次要让pan的位置零；
//        0628
//        [pan setTranslation:CGPointMake(0, 0) inView:self.view];
//        0629
//        
//        0630
//    }
//    0631
//    2.扩大缩小手势
//    0632
//    1.创建扩大缩小手势的对象 在创建时就带了要触发的事件  手势器
//    0633
//    UIPinchGestureRecognizer *pinch=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinch:)];
//    0634
//    2.记录下开始图像的大小，在扩大缩小函数时使用；原因是扩大尺寸是在图像的现有大小上乘，而图像的尺寸是变化的所以会使图像扩大缩小的太过火；所以纪录原图像大小一直在这个基础上扩大 size=CGSizeMake(imagview.bounds.size.width,imagview.bounds.size.height );
//    0635
//    3.图像添加扩大缩小手势；
//    0636
//    [imagview addGestureRecognizer:pinch];
//    0637
//    4.图像扩大缩小手势触发的事件；
//    0638
//    -(void)pinch:(UIPinchGestureRecognizer *)pinch
//    0639
//    {
//        0640
//        改变图像的大小；pinch.scale是触摸点的相对于原有位置的位移量的倍数。
//        0641
//        imagview.bounds=CGRectMake(0, 0,size.width*pinch.scale, size.height*pinch.scale);
//        0642
//        为了防止每次扩大缩小都要从原图开始，所以操作结束释放触点一次就要把当前的尺寸记下，下次变化在这个基础上改变；
//        0643
//        
//        0644
//        if (pinch.state==UIGestureRecognizerStateEnded) {
//            0645
//            size=CGSizeMake(imagview.bounds.size.width, imagview.bounds.size.height);
//            0646
//        }
//        0647
//        
//        0648
//        gesture.scale=1.0f;//这个很重要
//        0649
//        
//        0650
//        3.旋转手势
//        0651
//        //电话在手机里面优先级是最高的
//        0652
//        
//        0653
//        1.旋转角度对象的初始化
//        0654
//        UIRotationGestureRecognizer *rotation=[[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotation:)];
//        0655
//        2.给旋转图像添加旋转对象
//        0656
//        [imagview addGestureRecognizer:rotation];
//        0657
//        3.旋转时触发的函数
//        0658
//        -(void)rotation:(UIRotationGestureRecognizer *)rotation
//        0659
//        {
//            0660
//            让图像旋转某个角度，这个交度使相对原图旋转的角度。所以必须有个判断语句，如果释放一次触点就要把当前位置记下，否则图像还会回到原来状态；
//            0661
//            imagview.transform=CGAffineTransformMakeRotation(f+rotation.rotation);
//            0662
//            if (rotation.state==UIGestureRecognizerStateEnded) {
//                0663
//                f=f+rotation.rotation;
//                0664
//            }
//            0665
//        }
//        0666
//        4.tap的一些属性
//        0667
//        可以给image添加tap事件
//        0668
//        tap.numberOfTapsRequired=2;//点击几次触发事件，点击次数必须是连续点击
//        0669
//        tap.numberOfTouchesRequired=2;//设置触摸点数 只有两个触点存在时点击才能触发事件
//        0670
//        5.触摸时自动调用的触摸函数一共有四个
//        0671
//        触点事件调用时UITouch对象产生后自动调用的属性；由于单击的话只有一共对象；所以不论有几个touch对象都时指当前鼠标触点？那为什么还要创建触点对象呢？而anyobject之外还能做什么
//        0672
//        1. 触摸开始触发的事件
//        0673
//        //开始触屏的时候touchesBegan
//        0674
//        -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//        0675
//        {
//            0676
//            NSLog(@"began");
//            0677
//            建立触摸对象 触摸对象是任意触点；但是事实是当前鼠标点击的点；但是怎么得到另一个点的坐标？
//            0678
//            UITouch *touch=[touches anyObject];//anyObject  任何触摸的东西都储存在里面
//            0679
//            if(touch.tapCount==1)
//                0680
//            {
//                0681
//                NSLog(@"这是一个单击事件");
//                0682
//            }
//            0683
//            else if(touch.tapCount==2)
//                0684
//            {
//                0685
//                NSLog(@"这是一个双击事件");
//                0686
//            }
//            0687
//            
//            0688
//            CGPoint point=[touch locationInView:self.view];
//            0689
//            NSLog(@"%f %f",point.x,point.y);
//            0690
//            // 可以调用touch开始点和touch结束点做加减得到移动大小, 但是这样做很麻烦，ui有封装好的方法       UIPanGestureRecognizer
//            0691
//            // touch只调用第一触电大小，怎么得到第二个点?}
//            0692
//            
//            0693
//            //手指离开屏幕的时候
//            0694
//            2.触摸事件结束触发事件
//            0695
//            -(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//            0696
//            {
//                0697
//                NSLog(@"end");
//                0698
//            }
//            0699
//            3.cancell实在移动时突然被其他进程打断时调用。比如突来电话
//            0700
//            -(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
//            0701
//            {
//                0702
//                NSLog(@"cancel");
//                0703
//            }
//            0704
//            4.触点移动时触发的事件；
//            0705
//            //手指移动发生的事件
//            0706
//            -(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
//            0707
//            {
//                0708
//                UITouch *touch=[touches anyObject];
//                0709
//                CGPoint point=[touch locationInView:self.view];
//                0710
//                UIImageView * imageView=(UIImage *)[self.view viewWithTag:101];
//                0711
//                CGRect
//                0712
//                
//                0713
//                NSLog(@"move");
//                0714
//            }
//            0715
//            
//            0716
//            [performSelector:@selector(single Tag)withObject:nil afterDelay:delaytime]//实现函数的调用，延时调用，相当于多线程
//            0717
//            
//            0718
//            9.13周四
//            0719
//            1.各个控制器间的关系：
//            0720
//            window  的rootviewcontroller可以是uinavigationcontroller ,uitabbarcontroller ,uiviewcontroller
//            0721
//            uinavigationconroller 上可以添加uiviewcontroller
//            0722
//            uitabbarcontroller上可以添加uiviewcontrolller 也可以添加uinavigationcontroller
//            0723
//            到此基本上控制器的关系弄清了；
//            0724
//            1.UITabBarController ：标签控制器,分栏控制器
//            0725
//            当uitabbarcontroller含的uitabbaritem很多时，编译器会自动隐藏以省略号表示，点击省略号就可以查看不显示的item
//            0726
//            1.初始化：
//            0727
//            UITabBarController *tc=[[UITabBarController alloc]init];
//            0728
//            2.创建视图控制器然后创建 UITabBarItem并把它赋给视图控制器的 tabBarItem
//            0729
//            ViewController *vc=[[[ViewController alloc]init]autorelease];
//            0730
//            UITabBarItem *item=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:0];
//            0731
//            注：可以自定义item 也可以用系统中定义好的；
//            0732
//            vc.tabBarItem=item;
//            0733
//            3.创建导航条；用于放人UITabBarController 由此可知uitabbarcontronller和uinavigationcontroller的包含关系；
//            0734
//            UINavigationController *nc=[[UINavigationController alloc]initWithRootViewController:vc];
//            0735
//            4.添加导航控件和视图控件；
//            0736
//            tc.viewControllers= [NSArray arrayWithObjects:nc,vc1,vc2, nil];
//            0737
//            5.让根控制器为标签控制器
//            0738
//            self.window.rootViewController=tc;
//            0739
//            2.解决不显示第二个以后的标签问题
//            0740
//            1.原因：如果把每个控制器的标签生成写在viewdidload里面由于为了节省内存开始只会加载一个控制器。所以只能显示第一个标签；
//            0741
//            ViewController1 *vc1=[[[ViewController1 alloc]init]autorelease];
//            0742
//            //注如不使用vc1显示是没有其图，因为还不加载它的程序
//            0743
//            vc1.view.backgroundColor=[UIColor blueColor];
//            0744
//            2.解决方法：1.init函数中生成控制器标签生成代码；在创建控制器时就会执行；
//            0745
//            2. 在appdelegate中生成控制器的标签
//            0746
//            3.在appdelegate 中调用控制器的函数
//            0747
//            3.本地存储： NSUserDefaults：一旦运行数据就会被存储下来，每次运行程序以前的纪录下来的数据仍然有；
//            0748
//            //只能保存NSString  NSNumber NSData,NSDictionary; NSArray;这五种类型；(其他的是需要强转的  类似于 图片的)
//            0749
//            //保存到本地，一旦保存，再运行还有数据，所以可以达到数据在不通页面间的传递
//            0750
//            NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
//            0751
//            ／／为本地存储添加数据；类似于字典的用法
//            0752
//            [userDefault setObject:@"adba" forKey:@"key"];
//            0753
//            //同步操作，保存到本地；
//            0754
//            [userDefault synchronize];   同步了才可以保存到本地的
//            0755
//            //获取以前存储的数据;
//            0756
//            NSString * str=[userDefault objectForKey:@"key"];//根据关键字取出对应的用户默认数据
//            0757
//            NSLog(@"%@",str);
//            0758
//            
//            0759
//            //实现UITabBarControllerDelegate代理的方法
//            0760
//            - (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//            0761
//            {
//                0762
//                NSLog(@"You selected: %d",tabBarController.selectedIndex);
//                0763
//                
//                0764
//                //只是一个单例
//                0765
//                NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];//用来存储数据的数据库 创建一个指针来存储和取出数据
//                0766
//                [ud setInteger:tabBarController.selectedIndex forKey:@"LAST_PAGE"];
//                0767
//                [ud synchronize];//将新添加的数据存盘
//                0768
//            }
//            0769
//            //下面4个方法  不是属于类的方法 是系统本来已经提供的方法    只跟视图控制器的出现和消失有关系的
//            0770
//            
//            0771
//            
//            0772
//            //视图将要出现的时候
//            0773
//            
//            0774
//            - (void)viewWillAppear:(BOOL)animated;    // Called when the view is about to made visible. Default does nothing
//            0775
//            
//            0776
//            //视图已经出现的时候
//            0777
//            - (void)viewDidAppear:(BOOL)animated;     // Called when the view has been fully transitioned onto the screen. Default does nothing
//            0778
//            //视图将要消失的时候
//            0779
//            - (void)viewWillDisappear:(BOOL)animated; // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
//            0780
//            //视图已经消失的时候
//            0781
//            - (void)viewDidDisappear:(BOOL)animated;  // Called after the view was dismissed, covered or otherwise hidden. Default does nothing
//            0782
//            
//            0783
//            
//            0784
//            4.数据字典：NSDictionary：用于存储数据可以和数组联合起来用；
//            0785
//            1.字典的初始化方法
//            0786
//            1.直接用数值初始化：
//            0787
//            NSDictionary *dic1=[[NSDictionary alloc]initWithObjects:[NSArray arrayWithObjects:@"",@"", nil] forKeys:[NSArray arrayWithObjects:@"",@"", nil]] ;
//            0788
//            2.用数组初始化
//            0789
//            NSArray *array=[[NSArray alloc]initWithObjects:@"23",@"100",@"zhang" ,nil];
//            0790
//            NSArray *array2=[[NSArray alloc] initWithObjects:@"年龄",@"体重",@"姓名", nil];
//            0791
//            NSDictionary *dic1=[[NSDictionary alloc]initWithObjects:array forKeys:array2];
//            0792
//            3.用其他字典初始化
//            0793
//            NSDictionary *dic=[[NSDictionary alloc]initWithDictionary:dic1];
//            0794
//            4.用网络URL初始化
//            0795
//            NSDictionary *dic5=[NSDictionary alloc]initWithContentsOfURL:<#(NSURL *)#>
//            0796
//            2.通过key来找到对应的值；
//            0797
//            NSLog(@"%@",[dic objectForKey:@"key"]);
//            0798
//            
//            0799
//            3.创建动态字典 用法和普通字典一样；
//            0800
//            NSMutableDictionary *dic3=[NSMutableDictionary dictionaryWithCapacity:0];
//            0801
//            4.为动态字典添加内容；
//            0802
//            [dic2 setObject:@"180" forKey:@"身高"];
//            0803
//            [dic2 setObject:@"56" forKey:@"weight"];
//            0804
//            [dic2 setObject:@"13" forKey:@"age"];
//            0805
//            
//            0806
//            NSNumber 数值对象
//            0807
//            1.初始化数值对象 用一个基础数据类型初始化，如整形，浮点，字符都可以；
//            0808
//            NSNumber *num=[NSNumber numberWithInt:vc.tabBarItem.tag ];
//            0809
//            2.把数值对象添加到数组中；
//            0810
//            [array addObject:num];
//            0811
//            3.把nsstring类型转换成值；和把数值类型转换成整形
//            0812
//            int i=1;
//            0813
//            NSString *str=[NSString stringWithFormat:@"%d",i];
//            0814
//            int a=[str intValue];//其他数值形式的也可以类似转换   如float b=[str floatValue];
//            0815
//            
//            0816
//            UITabBarController的代理函数；
//            0817
//            uitabbarcontroller 中当item很多时会有省略；还可以调整uitabbaritem的排放顺序调整在主页显示的页面；这时会需要tabbarcontroller 的代理类
//            0818
//            1.当某个viewcontroller被选择时触发的事件；
//            0819
//            应用：每当页面显示时有些提示信息……..
//            0820
//            -(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
//            0821
//            {
//                0822
//                NSLog(@"didSelectViewController");
//                0823
//                // NSLog(@"%d",tabBarController.tabBarItem.tag);
//                0824
//                NSLog(@"%d",viewController.tabBarItem.tag);
//                0825
//            }
//            0826
//            2.在某个viewcontroller选择时触发的事件
//            0827
//            -(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
//            0828
//            {
//                0829
//                
//                0830
//                NSLog(@"shouldSelectViewController:");
//                0831
//                NSLog(@"%d",viewController.tabBarItem.tag);
//                0832
//                return YES;
//                0833
//            }
//            0834
//            3 将要结束用户自定义item时；既点击导航栏中的done时调用用法：可以提示用户确实要这样更改吗。
//            0835
//            -(void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
//            0836
//            {
//                0837
//                NSLog(@"willEndCustomizingViewControllers");
//                0838
//                //NSLog(@"%d",viewControllers)
//                0839
//                NSLog(@"%d",changed);
//                0840
//            }
//            0841
//            4.将开始进行用户自定义item时调用；既点击了导航栏中的edit时调用此函数；
//            0842
//            -(void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
//            0843
//            {
//                0844
//            }
//            0845
//            5.结束用户自定义item后调用既单击了done ；用法可以纪录此时的新的item用于永久性更改，下次运行此程序保持这个状态；
//            0846
//            -(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
//            0847
//            {
//                0848
//                NSMutableArray *array=[NSMutableArray arrayWithCapacity:0];
//                0849
//                for (UIViewController *vc in viewControllers) {
//                    0850
//                    NSNumber *num=[NSNumber numberWithInt:vc.tabBarItem.tag ];
//                    0851
//                    [array addObject:num];
//                    0852
//                    // NSLog(@"%d",vc.tabBarItem.tag);
//                    0853
//                    
//                    0854
//                    //把nsstring转换成数据类型
//                    0855
//                    //        int i=1;
//                    0856
//                    //        NSString *str=[NSString stringWithFormat:@"%d",i];
//                    0857
//                    //        int a=[str intValue];
//                    0858
//                }
//                0859
//                NSUserDefaults *userdefault=[NSUserDefaults standardUserDefaults];
//                0860
//                [userdefault setObject:array forKey:@"num"];
//                0861
//                
//                0862
//                NSLog(@"didEndCustomizingViewController");
//                0863
//            }
//            0864
//            如何保存用户更改的uitabbaritem位置？
//            0865
//            1.在用户用编辑item顺序后执行done，这时在调用的didEndCustomizingViewControllers 函数传递的参数viewControllers 纪录了此时新的排列顺序；这时要用本地存储记下这个顺序；注意因为每个viewcontroller在初始化时设置了自己的tag值，所以只记下tag值就可以找到对应的viewcontroller
//            0866
//            -(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
//            0867
//            {
//                0868
//                初始化可变数组用于存储tag值
//                0869
//                NSMutableArray *array=[NSMutableArray arrayWithCapacity:0];
//                0870
//                遍历新设置的控制器顺序；并把tag值按顺序存储到可变数组中
//                0871
//                for (UIViewController *vc in viewControllers) {
//                    0872
//                    NSNumber *num=[NSNumber numberWithInt:vc.tabBarItem.tag ];
//                    0873
//                    [array addObject:num];
//                    0874
//                }   定义本地存储对象；
//                0875
//                NSUserDefaults *userdefault=[NSUserDefaults standardUserDefaults];
//                0876
//                把可辨数组存入到本地存储中
//                0877
//                [userdefault setObject:array forKey:@"num"];
//                0878
//                NSLog(@"didEndCustomizingViewController");
//                0879
//            }
//            0880
//            2. 在加载函数中可以先判断本地存储是否有数据；如果没有就是用户还未设置过，那item顺序要按加载顺序排列；如果非空的话就把本地存储的数据的赋值给viewcontrollers；
//            0881
//            NSMutableArray *array=[NSMutableArray arrayWithCapacity:0];
//            0882
//            for (int i=0; i<6; i++) {
//                0883
//                UIViewController *vc=[[UIViewController alloc]init];
//                0884
//                [array addObject:vc];
//                0885
//                
//                0886
//                UITabBarItem *item=[[UITabBarItem alloc]initWithTitle:[NSString stringWithFormat:@"vc%d",i+1] image:[UIImage imageNamed:@"1.png"] tag:i];
//                0887
//                vc.tabBarItem=item;
//                0888
//                [item release];
//                0889
//                [vc release];
//                0890
//            }
//            0891
//            UITabBarController *tabbar=[[UITabBarController alloc]init];
//            0892
//            tabbar.viewControllers=array;
//            0893
//            注：没有alloc的对象一定不要release；如button一般创建不用alloc；注意注注意
//            0894
//            
//            0895
//            9.14 周五
//            0896
//            实现键盘弹起时页面也跟着弹起键盘的高度
//            0897
//            1.基本思想：
//            0898
//            1. 创建两个通知用于监听键盘弹起和落下
//            0899
//            //面试重点：通知；通知中心是管理通知的；
//            0900
//            [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//            0901
//            //监听者一般是哪个控件创建谁监听器就谁监听
//            0902
//            ／／name是监听的信号；
//            0903
//            //selecto监听到信号后触发的事件；
//            0904
//            //object 指监听某个对象，一般是全局监听所以是nil
//            0905
//            [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
//            0906
//            2.在监听键盘弹起的事件中记下键盘高度，然后把view提高键盘高度
//            0907
//            
//            0908
//            -(void)keyboardWillShow:(NSNotification *)noti
//            0909
//            {    键盘弹起时触发的事件；
//                0910
//                //获得键盘的高度， 将传递过来的消息信息纪录达字典；从字典中找到关键字为键盘框架的数据让然后把它转换成cgrect类型读取它的高度
//                0911
//                NSDictionary *dic=[noti userInfo];
//                0912
//                CGRect rect=[[dic objectForKey:UIKeyboardFrameEndUserInfoKey]CGRectValue];
//                0913
//                float h=rect.size.height;
//                0914
//                NSLog(@"%f",h);
//                0915
//                //设置动画 使键盘高度提高；
//                0916
//                [UIView beginAnimations:nil context:nil];
//                0917
//                [UIView setAnimationDuration:0.25];
//                0918
//                self.view.frame=CGRectMake(0, 20-h, 320, 460);
//                0919
//                //注意是20减去键盘的高度；因为view是加载在window上的它的frame是相对于window的。这就要注意了，a控件添加到b控件上a的frame就是相对于b的frame
//                0920
//                [UIView commitAnimations];
//                0921
//                ｝
//                0922
//                3.收起键盘   键盘弹出和收起是随文本编辑开始和退出自动弹出和收起，所以要想让文本框退出编辑模式必须有个事件触发，而在touchesbegan的系统函数中只要鼠标点击就能触发，所以一般在这个里面让textfield退出编辑模式；
//                0923
//                [ resignFirstResponder]; 就是textfield退出编辑模式的函数；
//                0924
//                -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//                0925
//                {
//                    0926
//                    UITextField * textfield=(UITextField *)[self.view viewWithTag:100];
//                    0927
//                    [textfield resignFirstResponder];
//                    0928
//                }
//                0929
//                
//                0930
//                4.不使用键盘时让view以动画跳下来；
//                0931
//                -(void)keyboardWillHide:(NSNotification *)noti
//                0932
//                ｛
//                0933
//                [UIView beginAnimations:nil context:nil];
//                0934
//                [UIView setAnimationDuration:0.20];
//                0935
//                self.view.frame=CGRectMake(0, 20, 320, 460);
//                0936
//                [UIView commitAnimations];
//                0937
//            }
//            0938
//            
//            0939
//            弹出消息框
//            0940
//            注：弹出消息框所用代理为UIAlertViewDelegate   这是提示框，  这个不用添加到窗口的！！！
//            0941
//            1.创建消息框对象
//            0942
//            UIAlertView *alertview=[[UIAlertView alloc]initWithTitle:@"error" message:@"帐号错误" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
//            0943
//            让消息框展示出来
//            0944
//            [alertview show];//这是系统自动调用的函数
//            0945
//            [alertview release];
//            0946
//            2.在消息框对象的代理函数中执行操作 消息框有四个代理函数，点击函数最常用
//            0947
//            -(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//            0948
//            {
//                0949
//                通过传递过来的button序号知道那个button进行了操作执行相应的命令
//                0950
//                //按钮从左边计数；
//                0951
//                if (buttonIndex==0) {
//                    0952
//                    self.view.backgroundColor=[UIColor yellowColor];
//                    0953
//                }
//                0954
//                else
//                    0955
//                    self.view.backgroundColor=[UIColor brownColor];
//                0956
//            }
//            0957
//            
//            0958
//            从相册和相机获取图片
//            0959
//            思想： 1.创建获取图片按钮和接收图像的的视图控件
//            0960
//            imageview =[[UIImageView alloc]initWithFrame:CGRectMake(100, 80, 100, 100)];
//            0961
//            [self.view addSubview:imageview];
//            0962
//            UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            0963
//            button.frame=CGRectMake(100, 190, 120, 20);
//            0964
//            [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
//            0965
//            [self.view addSubview:button];
//            0966
//            
//            0967
//            //提示框
//            0968
//            2.在button触发的事件中生成UIActionSheet对象去选择从哪里获取图片
//            0969
//            -(void)buttonClick
//            0970
//            {
//                0971
//                UIActionSheet *as=[[UIActionSheet alloc]initWithTitle:@"选择图片来源" delegate:self  cancelButtonTitle:@"取消" destructiveButtonTitle:@"相机" otherButtonTitles:@"相册", nil];
//                0972
//                ／／可以生成多个按钮
//                0973
//                [as showInView:self.view];
//                0974
//                展示这个动作页面；
//                0975
//                [as release];
//                0976
//            }
//            0977
//            3.通过调用UIActionSheet的代理函数获取图片；所以头文件必须声明他的代理一般用到是点击函数，通过传递按钮的排列序号知道那个按钮被点击触发相应的事件
//            0978
//            -(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
//            0979
//            {
//                0980
//                if (buttonIndex==2) {
//                    0981
//                    return;
//                    0982
//                }
//                0983
//                ／／ 取消按钮序号是2,所以如果指针是2,表明触发了取消，注意对应的序号要和创建时一致；
//                0984
//                UIImagePickerController *pc=[[UIImagePickerController alloc]init];
//                0985
//                
//                0986
//                ／／创建图片获取控制器；根据点击按钮不同从不同的资源获取图片；
//                0987
//                // 防止触发虚拟机不能完成的事件发生崩溃，提前做一下判断，如果不是虚拟机就执行操作；
//                0988
//                if(buttonIndex==0 && TARGET_IPHONE_SIMULATOR)
//                    0989
//                {
//                    0990
//                    [pc release];
//                    0991
//                    return;
//                    0992
//                }
//                0993
//                if(buttonIndex==0){
//                    0994
//                    pc.sourceType=UIImagePickerControllerSourceTypeCamera;
//                    0995
//                }
//                0996
//                else if(buttonIndex==1)
//                    0997
//                {
//                    0998
//                    //pc.sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
//                    0999
//                    
//                    1000
//                    pc.sourceType=UIImagePickerControllerSourceTypeSavedPhotosAlbum;
//                    1001
//                    //区分这两个属性的不同第一个
//                    1002
//                }
//                1003
//                
//                1004
//                pc.delegate=self;
//                1005
//                //这个对象设置代理需要遵从两个协议UIImagePickerControllerDelegate, 和导航控制协议 因为图片控制器也是个导航控制器UINavigationControllerDelegate
//                1006
//                ／／把控制器交给图像资源获取控制器
//                1007
//                [self presentModalViewController:pc animated:YES];
//                1008
//                [pc release];
//                1009
//            }
//            1010
//            在系统中的图片获取器中点击按钮可以触发的事件
//            1011
//            //点击图片调用的函数
//            1012
//            -(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
//            1013
//            {
//                1014
//                imageview.image=image;
//                1015
//                [picker dismissModalViewControllerAnimated:YES];
//                1016
//            }
//            1017
//            //点击取消触发的事件
//            1018
//            -(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
//            1019
//            {
//                1020
//                [picker dismissModalViewControllerAnimated:YES];
//                1021
//                
//                1022
//            }
//            1023
//            
//            1024
//            9.17 第十周 周一
//            1025
//            
//            1026
//            UIScrollView 滚动视图
//            1027
//            注：苹果的内存复用机制：视图很大超过了屏幕显示的范围，在显示的只是屏幕上的内容，为了减少内存使用把不现实的那用从内存中去除；
//            1028
//            1.滚动视图的初始化
//            1029
//            UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//            1030
//            frame：是滚屏在视图上占用的大小；
//            1031
//            2.给滚动视图添加控件时，如果控件有事件响应的话，系统设置了一个定时器，如果在限定事件内拖动的话，该控件就失去了响应机会，拖动视图也会跟着拖动；
//            1032
//            UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            1033
//            button.frame=CGRectMake(100, 100, 100, 50);
//            1034
//            //注意按钮的响应时间，如果按钮在没响应前滑动，此时就相当于视图滑动
//            1035
//            
//            1036
//            3.设置滚屏的大小，这个属性很重要   显示的是内容的大小   体现了滚动视图的经典
//            1037
//            sv.contentSize= CGSizeMake(320, 460*2);
//            1038
//            滚屏的真实大小；
//            1039
//            4.初始位置设置    //偏移量   是一个点  有x值与  y值
//            1040
//            sv.contentOffset=CGPointMake(90, 90);  // contentOffset.x 与 contentOffset。y
//            1041
//            //注：x，y是屏幕的框架原点相对于滚屏的原点的位置；当滚屏超出手机框架时这两个值比为正数；
//            1042
//            5.竖直和水平滚动条是否显示；默认时显示滚动条//这条很重要
//            1043
//            sv.showsVerticalScrollIndicator=NO;//是否显示竖直方向的滚动条
//            1044
//            sv.showsHorizontalScrollIndicator=NO;//是否显示水平方向的滚动条，默认是显示的 ，不显示设置成NO
//            1045
//            6.反弹效果的设置；设为yes后可以反弹；设为no就不能反弹；
//            1046
//            sv.bounces=YES；
//            1047
//            //总是反弹，即使大小和边框一样也可以有反弹效果；
//            1048
//            sv.alwaysBounceHorizontal=YES;
//            1049
//            sv.alwaysBounceVertical=YES;
//            1050
//            7.设置为不可滚动；即使大于框架
//            1051
//            sv.scrollEnabled=NO;
//            1052
//            
//            1053
//            //添加图片视图，视图用addSubview的方法来添加,把图片添加到滚动视图上面
//            1054
//            [sv addSubview:imageView];
//            1055
//            //再把滚动视图添加到  总试图上面
//            1056
//            [self.view addSubview:sv ];
//            1057
//            
//            1058
//            //设置显示内容尺寸
//            1059
//            sv.contentSize=CGSizeMake(260*4, 400);
//            1060
//            //设置按照页码滚动
//            1061
//            sv.pagingEnabled=YES;//这样设置是保证 一页一页的显示出来 不可能只显示一半，用户不喜欢看到这个效果；
//            1062
//            //设置边缘弹动效果//主要是给用户感觉的
//            1063
//            sv.bounces=YES;//可以弹动的      也可以sv.bounces=NO;此时到边缘就不能滚动，不会出现一些不该出现的空白
//            1064
//            //改变滚动条偏移量  当前显示内容的偏移量；
//            1065
//            sv.contentOffset=CGPointMake(100, 0);
//            1066
//            
//            1067
//            使用：代理的三部曲，每一个协议方法都是这么来做的
//            1068
//            遵守协议（什么控制器遵守什么协议  写在尖括号里面）
//            1069
//            委托代理（A.delegate=self）
//            1070
//            实现方法(完成的方法);
//            1071
//            
//            1072
//            8.滚动条的代理函数
//            1073
//            1.当屏幕滚动时调用的函数
//            1074
//            -(void)scrollViewDidScroll:(UIScrollView *)scrollView
//            1075
//            {
//                1076
//                NSLog(@"%f %f",scrollView.contentOffset.x,scrollView.contentOffset.y);
//                1077
//            }
//            1078
//            2. 将要开始拖动时调用
//            1079
//            -(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
//            1080
//            
//            1081
//            3.滚动结束后调用  手指抬起开始减速的瞬间 开始回调  //用这个方法来实现拖动的时候 页的对应
//            1082
//            -(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
//            1083
//            {
//                1084
//                NSLog(@"endDrag");
//                1085
//            }
//            1086
//            4.滚屏结束时调用
//            1087
//            -(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
//            1088
//            
//            1089
//            
//            1090
//            5.滚屏将开始减速时调用
//            1091
//            -(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
//            1092
//            
//            1093
//            
//            1094
//            用一个类来封装一下，封装就是派生出一个类，写自己的类，
//            1095
//            
//            1096
//            9.用滚动视图来显示图片的缩放；注：滚屏只能执行单一功呢，要么让他做缩放功呢，要么让他实现滚屏；
//            1097
//            1.创建滚动视图
//            1098
//            super viewDidLoad];
//            1099
//            UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//            1100
//            2.设置最大最小缩放
//            1101
//            //缩放和滑动止只能选一
//            1102
//            sv.maximumZoomScale=5.0;
//            1103
//            sv.minimumZoomScale=0.5;
//            1104
//            3. 创建视图控件，然后添加到滚屏中。
//            1105
//            imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"5.png"]]];
//            1106
//            imageview.frame=CGRectMake(100, 100, 50, 50);
//            1107
//            [sv addSubview:imageview];
//            1108
//            [imageview release];
//            1109
//            4.用到滚屏的函数要给它设置代理
//            1110
//            sv.delegate=self;
//            1111
//            
//            1112
//            处理用户响应事件，需要重载那三个触摸的方法，开始，触摸到，末尾，
//            1113
//            
//            1114
//            5.在滚屏的放大缩小函数中写实现功能
//            1115
//            -(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
//            1116
//            {
//                1117
//                
//                1118
//                static int i=0;
//                1119
//                
//                1120
//                if (scrollView!=myScrollView) {
//                    1121
//                    return [scrollView.subviews objectAtIndex:i];
//                    1122
//                    i++;
//                    1123
//                    
//                    1124
//                    
//                    1125
//                }
//                1126
//                else
//                    1127
//                    return NULL;
//                1128
//            }
//            1129
//            
//            1130
//            
//            1131
//            封装一个类达到的效果 简化代码，很有好处
//            1132
//            
//            1133
//            
//            1134
//            10.运用滚动屏实现广告条展示；
//            1135
//            设计思想：滚动广告起始和最后广告条实现不间断的无限循环；所以要多家一个视图，最后一个视图和第一个一样，这样可以保证不间断；
//            1136
//            UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//            1137
//            sv.contentSize=CGSizeMake(320, 200*9);
//            1138
//            sv.scrollEnabled=NO;
//            1139
//            ／／视图的可滚动属性设为no不可滚动；
//            1140
//            sv.tag=100;
//            1141
//            [self.view addSubview:sv];
//            1142
//            sv.showsVerticalScrollIndicator=NO;
//            1143
//            for (int i=0; i<9; i++) {
//                1144
//                UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, i*200, 320, 200)];
//                1145
//                imageview.image=[UIImage imageNamed:[NSString stringWithFormat:@"17_%d.jpg",i]];
//                1146
//                [sv addSubview:imageview];
//                1147
//                [imageview release];
//                1148
//            }
//            1149
//            ／／创建计时器来控制图片定时更替
//            1150
//            NSTimer *timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(timer:) userInfo:nil repeats:YES];
//            1151
//        }
//        1152
//        -(void)timer:(NSTimer *)timer
//        1153
//        {
//            1154
//            UIScrollView *sv=(UIScrollView *)[self.view viewWithTag:100];
//            1155
//            ／／当滚屏滚到最后一幅图时，让滚屏从头开始
//            1156
//            if(sv.contentOffset.y==200*8)//偏移量contentOffset,画布向左偏移是正的，向右偏移是负的，这是原则；
//                1157
//            {
//                1158
//                sv.contentOffset=CGPointMake(0, 0);
//                1159
//            }
//            1160
//            [sv setContentOffset:CGPointMake(0, sv.contentOffset.y+200) animated:YES];
//            1161
//            
//            1162
//        }
//        1163
//        UIPageControl 分页显示  页面控制器
//        1164
//        1.初始化对象
//        1165
//        UIPageControl *pc=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 440, 80, 20)];
//        1166
//        2.设置页数
//        1167
//        pc.numberOfPages=4;//设置小点的个数
//        1168
//        pc.tag=100;
//        1169
//        3.为分页点添加事件
//        1170
//        [pc addTarget:self action:@selector(pc:) forControlEvents:UIControlEventTouchUpInside];
//        1171
//        4.在滑动页面时，为每页定位      开发者无法判断用户判断到哪一页，所以只有委托UIScrollView的方法
//        1172
//        使用这个函数之前要实现UIScrollViewDelegate代理
//        1173
//        -(void)scrollViewDidScroll:(UIScrollView *)scrollView
//        1174
//        {
//            1175
//            UIPageControl *pc=(UIPageControl *)[self.view viewWithTag:100];
//            1176
//            pc.currentPage=scrollView.contentOffset.x/320;//改变原点的颜色
//            1177
//        }
//        1178
//        5.注意要想给滚屏分页，除了创建分页对象还要让滚屏设置分页属性
//        1179
//        sv.pagingEnabled=YES;
//        1180
//        
//        1181
//        //遵从UIScrollViewDelegate协议，实现UIScrollViewDelegate里面的方法
//        1182
//        -(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
//        1183
//        {//当页面开始减速的瞬间回调函数
//            1184
//            int pageNumber=scrollView.contentOffset.x/320;//contentoffset 内容的偏移量
//            1185
//            
//            1186
//            myPageontrol.currentPage=pageNumber;
//            1187
//        }
//        1188
//        
//        1189
//        
//        1190
//        
//        1191
//        
//        1192
//        9.18周二
//        1193
//        
//        1194
//        必须实现的
//        1195
//        @required
//        1196
//        
//        1197
//        - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
//        1198
//        
//        1199
//        // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
//        1200
//        // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
//        1201
//        
//        1202
//        - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
//        1203
//        
//        1204
//        UITableView 表视图
//        1205
//        1.初始化表格控件
//        1206
//        UITableView * tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460-44) style:UITableViewStyleGrouped];
//        1207
//        tableview.tag=100;
//        1208
//        2.给表格控件添加代理。注意它有两个代理//必须是两个代理
//        1209
//        tableview.delegate=self;
//        1210
//        tableview.dataSource=self;
//        1211
//        3.表格控件的代理函数
//        1212
//        //delegate 行数和单元格函数必须实现。否则程序无法运行；
//        1213
//        
//        1214
//        1.行数
//        1215
//        -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//        1216
//        {
//            1217
//            return dataarray.count;//有的时候每一行都是一样的
//            1218
//        }
//        1219
//        
//        1220
//        1，复用机制；要重点了解；
//        1221
//        2，只有一列，两列的话就是有两个tableView；
//        1222
//        3，有数据源对象，代理对象，tableView本身的对象；
//        1223
//        
//        1224
//        2.cell单元格//多少个格子要完成；每个格子里面是什么东西；  一定要完成这两个协议，否则UITableView会崩溃
//        1225
//        -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1226
//        {
//            1227
//            为每个单元个加一个标志，便于取得//每个格子的标题
//            1228
//            NSString *strID=@"ID";//代表的是某种类型的cell；字不是写的一样，但都是一种
//            1229
//            从表格对象中得到移出屏幕得对象；
//            1230
//            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:strID];//用队列的方式去找cell
//            1231
//            if (cell==nil) {
//                1232
//                //空值的情况，重现创建一个
//                1233
//                //顶多分配20个，然后不会再去分配了。然后反复的使用，0到10 是可以被替换的，不是一下子分配一万个，内存考虑
//                1234
//                cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:strID]autorelease];
//                1235
//                //     UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, 40, 20)];
//                1236
//                // label.text=[NSString stringWithFormat:@"%d",indexPath.row];
//                1237
//                //        [cell addSubview:label];
//                1238
//                //        label.tag=100;
//                1239
//                
//                1240
//            }
//            1241
//            //    indexPath.row; 行数
//            1242
//            ////    indexPath.section 段数     section代表的是组数，分组的时候就出来了
//            1243
//            //    UILabel *label=(UILabel *)[self.view viewWithTag:100];
//            1244
//            //    label.text=[dataarray objectAtIndex: indexPath.row];
//            1245
//            ／／添加图片
//            1246
//            cell.imageView.image=[UIImage imageNamed:@"5.png"];
//            1247
//            //添加细节名称表明可以展开cell
//            1248
//            cell.detailTextLabel.text=@"open";
//            1249
//            //表示有更多内容的展示风格//表格栏的尖尖  一半的中括号
//            1250
//            cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
//            1251
//            //选择时变色设置
//            1252
//            cell.selectionStyle=UITableViewCellSelectionStyleNone;
//            1253
//            ／／  设置cell文本  从数组中取出来   可以把文字统一放到数组里面去
//            1254
//            cell.textLabel.text = [dataarray objectAtIndex:indexPath.row];//主标题
//            1255
//            //添加细节名称表明可以展开cell      副标题
//            1256
//            cell.detailTextLabel.text=@"open";
//            1257
//            
//            1258
//            
//            1259
//            return cell;
//            1260
//        }
//        1261
//        
//        1262
//        删除或添加cell   先删除数据，再添加数据源 ，分为两步，  因为它有两个代理 ，其中一个就是数据源代理
//        1263
//        
//        1264
//        
//        1265
//        3. 段数
//        1266
//        -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//        1267
//        {
//            1268
//            return 3;
//            1269
//        }
//        1270
//        4.行高
//        1271
//        -(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//        1272
//        {
//            1273
//            //  可以设置每个行行高
//            1274
//            //    if (indexPath.row==1) {
//            1275
//            //        return 20;
//            1276
//            //    }
//            1277
//            return 50;
//            1278
//        }
//        1279
//        5.段头标题
//        1280
//        -(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//        1281
//        {
//            1282
//            return @"abc";
//            1283
//            
//            1284
//        }
//        1285
//        6.段尾标题
//        1286
//        -(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//        1287
//        {
//            1288
//            return @"tial";
//            1289
//            
//            1290
//        }
//        1291
//        7.删除和添加
//        1292
//        设置每个单元格的可编辑属性默认是yes所以当让它处于编辑模式时这个函数可以不写
//        1293
//        //设置元素的可编辑性
//        1294
//        -(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//        1295
//        {
//            1296
//            return YES;
//            1297
//        }
//        1298
//        //更改单元格的编辑属性；可以设置为删除和插入
//        1299
//        - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
//            1300
//            return UITableViewCellEditingStyleInsert;／／插入模式；
//            1301
//        }
//        1302
//        
//        1303
//        //可以滑动弹出删除键删除，也可以设置编辑按钮，点击编辑按钮删除
//        1304
//        -(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//        1305
//        {
//            1306
//            删除时既要从屏幕上删除，又要从数组中删除，
//            1307
//            [dataarray removeObjectAtIndex:indexPath.row];
//            1308
//            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationRight];
//            1309
//        }
//        1310
//        注意：如果表格分很多段，就必须分段操作；
//        1311
//        1.分几段，就创建几个数组，以防删除不同段内容相互影响，导致崩溃；
//        1312
//        2.在给每段单元格添加标题时也要分段添加；返回行数时也要按段来返回数组的行数；
//        1313
//        3.在删除单元格时要根据段不同删除不同的数组元素；
//        1314
//        //删除按钮改名为
//        1315
//        -(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
//        1316
//        {
//            1317
//            return @"2334";
//            1318
//        }
//        1319
//        7.为选择cell添加操作；下面操作为点击就会跳到新页面；作为选择cell操作的时候来用的
//        1320
//        -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//        1321
//        {
//            1322
//            UIViewController *vc=[[UIViewController alloc]init];
//            1323
//            vc.title=[NSString stringWithFormat:@"%d",indexPath.row];
//            1324
//            [self.navigationController pushViewController:vc animated:YES];//push之后再去加载；
//            1325
//        }
//        1326
//        8.//didSelectRowAtIndexPath作为cell选择操作的时候用
//        1327
//        - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//        1328
//        {
//            1329
//            UISearchBar * search = (UISearchBar *)[self.view viewWithTag:102];
//            1330
//            //是否是第一响应事件
//            1331
//            if ([search isFirstResponder]) {
//                1332
//                //若果是的画 就响应
//                1333
//                [search resignFirstResponder];
//                1334
//            }
//            1335
//        }
//        1336
//        
//        1337
//        9.为表格添加索引，点击就会跳到对应位置，分段的话每个标记代表一段
//        1338
//        -(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
//        1339
//        {
//            1340
//            return [NSArray arrayWithObjects:@"a",@"b",@"c", nil];
//            1341
//        }
//        1342
//        10.移动某个cell
//        1343
//        -(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
//        1344
//        {
//            1345
//            return YES;
//            1346
//        }
//        1347
//        -(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
//        1348
//        {
//            1349
//            //注意从前往后和从后往前移动不同
//            1350
//            NSString *str=[dataarray objectAtIndex:sourceIndexPath.row];
//            1351
//            // NSString *str1=[dataarray objectAtIndex:destinationIndexPath.row];
//            1352
//            if(sourceIndexPath.row<destinationIndexPath.row){
//                1353
//                [ dataarray insertObject:str atIndex:destinationIndexPath.row+1 ] ;
//                1354
//                [dataarray removeObjectAtIndex:sourceIndexPath.row];
//                1355
//                
//                1356
//            }
//            1357
//            else
//                1358
//            {
//                1359
//                [dataarray insertObject:str atIndex:destinationIndexPath.row];
//                1360
//                [dataarray removeObjectAtIndex:sourceIndexPath.row+1];
//                1361
//            }
//            1362
//            
//            1363
//        }
//        1364
//        注意有导航条时table的高要减掉导航条的高；
//        1365
//        //@required里面的方法是必须要实现的；@optional里面的方法可以实现也可以不实现
//        1366
//        
//        1367
//        @interface VC01 : UIViewController <UITableViewDelegate, UITableViewDataSource>
//        1368
//        //UITableView实现不了的，就用代理，让别人帮他实现，实现里面需要的方法
//        1369
//        
//        1370
//        9.19 周二
//        1371
//        搜索条一般搜索条
//        1372
//        -(void)viewDidLoad
//        1373
//        {
//            1374
//            [super viewDidLoad];
//            1375
//            dataArray=[[NSArray alloc]initWithObjects:@"dwew",@"dfas",@"aads",@"we", nil];
//            1376
//            注：在搜索设置时数组创建一定要用alloc；而且release 要在最后的dealloc中；因为数组用于更新数据，不断的使用如果不用alloc创建可能会被释放导致数组不可用；
//            1377
//            _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//            1378
//            _tableview.delegate=self;
//            1379
//            _tableview.dataSource=self;
//            1380
//            注：写tableview 的协议；
//            1381
//            [self.view addSubview:_tableview];
//            1382
//            //创建搜索条
//            1383
//            UISearchBar *search=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 88)];
//            1384
//            search.delegate=self;
//            1385
//            注：注意添加uisearchbar的协议；
//            1386
//            //添加搜索栏
//            1387
//            mSearchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
//            1388
//            [mSearchBar setTag:102];
//            1389
//            _mTableView.tableHeaderView = mSearchBar;
//            1390
//            
//            1391
//            
//            1392
//            
//            1393
//            
//            1394
//            search.showsScopeBar=YES;
//            1395
//            search.scopeButtonTitles=[NSArray arrayWithObjects:@"a",@"b",@"c", nil];
//            1396
//            注：添加范围条；两个函数必须连用；要对其添加事件要在下面函数中添加，这个事件是在点击button时触发
//            1397
//            -(void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
//            1398
//            
//            1399
//            search.showsCancelButton=YES;
//            1400
//            注：添加取消键
//            1401
//            search.showsSearchResultsButton=YES;
//            1402
//            注：设置搜索键 出发事件要和下面的函数连用 一般用于撤销键盘实现搜索功能；
//            1403
//            -(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
//            1404
//            
//            1405
//            注：将搜索条添加到tableview中；
//            1406
//            _tableview.tableHeaderView=search;
//            1407
//        }
//        1408
//        ／／ 添加取消按钮，点击取消按钮时触发；
//        1409
//        -(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
//        1410
//        {
//            1411
//            [searchBar resignFirstResponder];
//            1412
//            searchBar.text=@"";
//            1413
//        }
//        1414
//        ／／ 如果设置搜索列表键为真，将添加了搜索列表键到搜索列表的后面，点击时触这个事件；
//        1415
//        -(void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar{
//            1416
//            searchBar.text=@"resultslistbutton";
//            1417
//            
//            1418
//        }
//        1419
//        ／／点击键盘上的搜索键时触发；
//        1420
//        -(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
//        1421
//        {
//            1422
//            [self searchBar:searchBar textDidChange:searchBar.text];
//            1423
//        }
//        1424
//        ／／当添加了范围界定条时点击上面的按钮触发
//        1425
//        -(void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
//        1426
//        {
//            1427
//            if (selectedScope==0) {
//                1428
//                searchBar.text=@"a";
//                1429
//            }
//            1430
//            else if(selectedScope==1){
//                1431
//                searchBar.text=@"b";
//                1432
//            }
//            1433
//            else
//                1434
//                searchBar.text=@"c";
//            1435
//            [self searchBar:searchBar textDidChange:searchBar.text];
//            1436
//            ／／调用自己的函数；对数据进行搜索；从此也得知，非键盘输入的数据要搜索必须通过调用搜索函数出发，或者在键盘状态加入非键盘输入的数据；
//            1437
//        }
//        1438
//        ／／返回表格的行数；根据是否是搜索状态还非搜索状态反会不同的数据
//        1439
//        -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//        1440
//        {
//            1441
//            if (isSearch==YES) {
//                1442
//                return searchArray.count;
//                1443
//            }
//            1444
//            else
//                1445
//                return dataArray.count;
//            1446
//        }
//        1447
//        -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1448
//        {
//            1449
//            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ID"];
//            1450
//            if (cell==nil) {
//                1451
//                cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"]autorelease];
//                1452
//            }
//            1453
//            
//            1454
//            if (isSearch==YES) {
//                1455
//                NSLog(@"%@",searchArray);
//                1456
//                cell.textLabel.text=[searchArray objectAtIndex:indexPath.row];
//                1457
//            }
//            1458
//            else{
//                1459
//                cell.textLabel.text=[dataArray objectAtIndex:indexPath.row];
//                1460
//            }
//            1461
//            return cell;
//            1462
//        }
//        1463
//        
//        1464
//        
//        1465
//        
//        1466
//        
//        1467
//        
//        1468
//        
//        1469
//        ／／搜索条中的内容改变时调用；但有个问题就是一旦开始搜索取消后原内容不显示因为这个函数只有搜索条中输入值时才调用；所以搜索取消不显示原有数据；但是如果在结束编辑中调用此函数就不会出现此情况;
//        1470
//        但是此时如果有取消键的话又必须在取消键中添加内容让取消后清空搜索框并加载原又数据；所以下面的三个函数是联系起来的
//        1471
//        -(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
//        1472
//        {
//            1473
//            if (searchBar.text==nil||[searchBar.text isEqualToString:@""]) {
//                1474
//                isSearch=NO;
//                1475
//                [_tableview reloadData];//自动刷新，  自动刷新数据
//                1476
//            }
//            1477
//            NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF contains [cd] %@",searchBar.text];
//            1478
//            self.searchArray=[dataArray filteredArrayUsingPredicate:predicate];
//            1479
//            isSearch=YES;
//            1480
//            [_tableview reloadData];
//            1481
//            
//            1482
//        }
//        1483
//        -(void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
//            1484
//            
//            1485
//            [self searchBar:searchBar textDidChange:searchBar.text];
//            1486
//        }
//        1487
//        -(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
//        1488
//        {  searchBar.text=@"";
//            1489
//            isSearch=NO;
//            1490
//            [_tableview reloadData];
//            1491
//            [searchBar resignFirstResponder];
//            1492
//        }
//        1493
//        运用搜索控制器来实现搜索功能
//        1494
//        -(void)viewDidLoad
//        1495
//        {
//            1496
//            dataarray=[[NSArray alloc]initWithObjects:@"da",@"dee",@"ded",@"rtt", @"esdf",@"effy",@"qqo",@"ett",@"sdfa",@"dfg",nil];
//            1497
//            注：创建搜索数组，数组必须用alloc初始化而且不能被release；
//            1498
//            tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
//            1499
//            tableview.delegate=self;
//            1500
//            tableview.dataSource=self;
//            1501
//            tableview.tag=100;
//            1502
//            注：要为tableview添加tag属性便于知道搜索状态应为处于搜索状态时搜索控制器就会覆盖住表格框；所以通过判断此时是的tableview是那个可以知道更新那个数组数据；
//            1503
//            [self.view addSubview:tableview];
//            1504
//            [tableview release];
//            1505
//            UISearchBar *searchbar=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
//            1506
//            tableview.tableHeaderView=searchbar;
//            1507
//            注：创建搜索展示控制器 把导航条添加进去；把文本控制设置为本类；
//            1508
//            searchdisplay=[[UISearchDisplayController alloc]initWithSearchBar:searchbar contentsController:self];
//            1509
//            注：设置代理，和搜索资源搜索代理；
//            1510
//            searchdisplay.delegate=self;
//            1511
//            searchdisplay.searchResultsDataSource=self;
//            1512
//            searchdisplay.searchResultsDelegate=self;
//            1513
//            注意：此时搜索控制器不用释放，因为这个搜索器需要不断被调用；
//            1514
//            [searchbar release];
//            1515
//        }
//        1516
//        根据此时那个tableview被使用返回数据；
//        1517
//        -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//        1518
//        {
//            1519
//            if (tableView.tag==100) {
//                1520
//                return dataarray.count;
//                1521
//            }
//            1522
//            return searcharray.count;
//            1523
//        }
//        1524
//        ／／设置单元格；
//        1525
//        -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1526
//        {
//            1527
//            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ID"];
//            1528
//            if (cell==nil) {
//                1529
//                cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"];
//                1530
//            }
//            1531
//            if (tableView.tag==100) {
//                1532
//                cell.textLabel.text=(NSString *)[dataarray objectAtIndex:indexPath.row];
//                1533
//            }
//            1534
//            else
//                1535
//                cell.textLabel.text=(NSString *)[searcharray objectAtIndex:indexPath.row];
//            1536
//            
//            1537
//            return cell;
//            1538
//        }
//        1539
//        -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//        1540
//        {
//            1541
//            return 3;
//            1542
//        }
//        1543
//        //更新数据前对数据进行过滤；得到过滤的数据；此函数是个实时监控函数；
//        1544
//        -(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
//            1545
//            NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF contains [cd] %@",searchString];
//            1546
//            self.searcharray=(NSArray *)[dataarray filteredArrayUsingPredicate:predicate];
//            1547
//            NSLog(@"%@",searcharray);
//            1548
//            return YES;
//            1549
//        }
//        1550
//        //返回tableview中和对应段指针相对应的section的title；相当于为每段设置了一个名字
//        1551
//        -(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
//        1552
//        {
//            1553
//            return [NSArray arrayWithObjects:UITableViewIndexSearch,@"a",@"b",@"c",nil];
//            1554
//            ／／注意这里添加了一个搜索，所以搜索指针对应发生改变；在下面的函数返回时要注意
//            1555
//        }
//        1556
//        //返回和title和index一致的section
//        1557
//        -(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
//        1558
//        {
//            1559
//            if (index==0) {
//                1560
//                [tableView setContentOffset:CGPointMake(0, 0)];
//                1561
//            }
//            1562
//            return index-1;
//            1563
//        }
//        1564
//        //设置section的头标题；
//        1565
//        -(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//        1566
//        {
//            1567
//            return [NSString stringWithFormat:@"%d",section];
//            1568
//        }
//        1569
//        注意：有些对象没有被释放要写dealloc函数；
//        1570
//        
//        1571
//        设置控件的收起和放下
//        1572
//        (void)viewDidLoad
//        1573
//        {
//            1574
//            [super viewDidLoad];
//            1575
//            array=[[NSArray alloc]initWithObjects:@"小红",@"小梅",@"小李", nil];
//            1576
//            
//            1577
//            tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
//            1578
//            tableview.delegate=self;
//            1579
//            tableview.dataSource=self;
//            1580
//            tableview.sectionHeaderHeight=30;
//            1581
//            //设置tableview的section头标题的高；便于以后添加控件和控件大小相适应
//            1582
//            [self.view addSubview:tableview];
//            1583
//            [tableview release];
//            1584
//            p[0]=1;／／p是有两个元素的整形数组做为开关；如果设置几段需要几个开关，就让数组元素个数是几
//            1585
//            p[1]=1;
//            1586
//            
//            1587
//        }
//        1588
//        ／／根据数组元素的值确定段是打开还是收起；
//        1589
//        //简称设置行数
//        1590
//        -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//        1591
//        {
//            1592
//            if (p[section]==0) {
//                1593
//                return 0;
//                1594
//            }
//            1595
//            return array.count;//直接返回
//            1596
//        }
//        1597
//        //设置组数
//        1598
//        -(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//        1599
//        {
//            1600
//            return 2;
//            1601
//        }
//        1602
//        ／／创建表格单元格
//        1603
//        -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1604
//        {
//            1605
//            UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ID"];
//            1606
//            if (cell==nil) {
//                1607
//                cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"]autorelease];
//                1608
//            }
//            1609
//            cell.textLabel.text=[array objectAtIndex:indexPath.row];
//            1610
//            return cell;
//            1611
//        }
//        1612
//        ／／为表格的段头添加view让此view加载label和button，并为button添加事件用于控制开关的打开和关闭；既置0和置1；
//        1613
//        -(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//        1614
//        {
//            1615
//            UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 30)];
//            1616
//            view.backgroundColor=[UIColor blueColor];
//            1617
//            UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 80, 30)];
//            1618
//            label.backgroundColor=[UIColor clearColor];
//            1619
//            
//            1620
//            if (section==0) {
//                1621
//                label.text=@"我的好友";
//                1622
//            }
//            1623
//            else
//                1624
//                label.text=@"黑名单";
//            1625
//            
//            1626
//            [view addSubview:label];
//            1627
//            
//            1628
//            UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
//            1629
//            button.tag=section;
//            1630
//            ／／注意添加button的tag用于鉴别是哪个button；
//            1631
//            button.frame=CGRectMake(0, 0, 320, 30);
//            1632
//            [button addTarget:self action:@selector(buttonclick:) forControlEvents:UIControlEventTouchUpInside];
//            1633
//            [view addSubview:button];
//            1634
//            
//            1635
//            return view;
//            1636
//        }
//        1637
//        ／／button事件用于控制开关状态；
//        1638
//        -(void)buttonclick:(UIButton *)sender
//        1639
//        {
//            1640
//            if (p[sender.tag]==0) {
//                1641
//                p[sender.tag]=1;
//                1642
//            }
//            1643
//            else
//                1644
//                p[sender.tag]=0;
//            1645
//            
//            1646
//            [tableview reloadSections:[NSIndexSet indexSetWithIndex:sender.tag] withRowAnimation:UITableViewRowAnimationFade];
//            1647
//            ／／重新加载section根据button的不同来决定加载那个section 之 所以可以这样适应为button。tag是根据section设置的；此时加载section需要的数据是nsindexset类型搜一要把button的tag转换成此类型；
//            1648
//        }
//        1649
//        
//        1650
//        为解决问题：怎么让section头宽度变大？
//        1651
//        解决方法：设置tableview的section的头高 设置代码为：tableview.sectionHeaderHeight=30;
//        1652
//        cell的层次 view在cell上contentview又在view上其他控件又加在了content view上
//        1653
//        
//        1654
//        cell的contentView   cell上面的内容视图
//        1655
//        
//        1656
//        
//        1657
//        9.20周四
//        1658
//        和xib文件连用创建表格
//        1659
//        创建表格框，然后创建xib文件，并把xib文件中的默认视图删除；添加tableviewcell 可以在里面添加其他控件；
//        1660
//        -(void)viewDidLoad
//        1661
//        {    [super viewDidLoad];
//            1662
//            UITableView * tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320,460) style:UITableViewStylePlain];
//            1663
//            tableView.delegate=self;
//            1664
//            tableView.dataSource=self;
//            1665
//            [self.view addSubview:tableView];
//            1666
//            [tableView release];
//            1667
//        }
//        1668
//        ／／设置行数
//        1669
//        -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//        1670
//        {
//            1671
//            return 20;
//            1672
//        }／
//        1673
//        ／／在创建cell的函数中将xib创建的文件添加到tableview中；
//        1674
//        -(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1675
//        {
//            1676
//            UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:indexPath.row%2==0?@"ID":@"ID2"];
//            1677
//            if(cell==nil){
//                1678
//                //cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"];
//                1679
//                cell=[[[NSBundle mainBundle] loadNibNamed:indexPath.row%2==0?@"MYcell":@"MYCell2" owner:self options:nil]objectAtIndex:0];
//                1680
//                ／／和xib中的文件绑定；
//                1681
//            }
//            1682
//            ／／设置cell颜色要注意是设置contentview的颜色应为它覆盖在cell上；
//            1683
//            //  cell.contentView.backgroundColor=[UIColor redColor];  //cell也是个view 上有contentview 其实label也是加再contentview上
//            1684
//            
//            1685
//            return cell;
//            1686
//        }
//        1687
//        
//        1688
//        ／／自定义的cell注意在创建自定义cell类在写继承时是继承UITableViewCell;
//        1689
//        创建cell类后在初始化文件中写上初始化的cell特性，既需要更改什么属性，加在其他控件；
//        1690
//        - (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//        1691
//        {
//            1692
//            self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//            1693
//            if (self) {
//                1694
//                self.myLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
//                1695
//                myLabel.textAlignment=UITextAlignmentCenter;
//                1696
//                myLabel.backgroundColor=[UIColor greenColor];
//                1697
//                [self addSubview:myLabel];
//                1698
//                [myLabel release];
//                1699
//                
//                1700
//            }
//            1701
//            
//            1702
//            return self;
//            1703
//        }
//        1704
//        ／／在控制器中创建cell时创建自定义cell
//        1705
//        -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//        1706
//        {
//            1707
//            
//            1708
//            
//            1709
//            //复用池，每次显示满屏dequeueReusableCellWithIdentifier方法  复用机制
//            1710
//            CustomCell *cell=(CustomCell *)[tableView dequeueReusableCellWithIdentifier:@"ID"];
//            1711
//            if (cell==nil) {
//                1712
//                cell=[[CustomCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"];
//                1713
//                
//                1714
//                ｝
//                1715
//                ／／加载文本从资源文件中获取；
//                1716
//                NSString *str=[NSString stringWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"ui" ofType:@"rtf"] encoding:NSUTF8StringEncoding error:nil ];   // NSString *str=[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"c" ofType:@"rtf"] encoding:NSUTF8StringEncoding error:nil];
//                1717
//                cell.myLabel.text=str;
//                1718
//                return  cell;
//                1719
//            }
//            1720
//            
//            1721
//            
//            1722
//            
//            1723
//            9.24 周一 第十一周（网络
//            1724
//            在使用不同的网络协议传输时都要先加入协议文件；如果用到他们的对应函数时要写协议，设置代理
//            1725
//            1.json 格式网络传输
//            1726
//            在网络中传输请求时用的时是字符串。他们用｛｝［］链接起来；其中｛｝表示字典；［］表示数组；解析时只要分清层次需要从哪取数据就用相应的数组或对象取数据；
//            1727
//            1.网络数据解析
//            1728
//            //{ "title":"harry pottery", "price":"999$"}
//            1729
//            NSString *json=@"{\"title\":\"harry pottery\",\"price\":\"99999\"}";
//            1730
//            //双引号里面不能在有双引号，所以加双引号前要加反斜杠；
//            1731
//            NSDictionary *dic=[json JSONValue];
//            1732
//            NSString *str=[dic objectForKey:@"title"];
//            1733
//            NSLog(@"%@",str);
//            1734
//            //[{"a","b","c"}]
//            1735
//            json=@"[\" a\", \"b\",\"c\"]";
//            1736
//            NSArray *array=[json JSONValue];
//            1737
//            for (NSString *s in array) {
//                1738
//                NSLog(@"%@",s);
//                1739
//            }
//            1740
//            
//            1741
//            /*    { "books":[
//             1742
//             {
//             1743
//             "title": "harry1"
//             1744
//             },
//             1745
//             {
//             1746
//             "title":"harry2"
//             1747
//             ｝
//             1748
//             ]
//             1749
//             "num":"7"
//             1750
//             }
//             1751
//             */
//            1752
//            /*
//             1753
//             }
//             1754
//             */
//            1755
//            json=@"{\"key1\":[{\"key2\":\"value2\"},\"value3\" ]}";
//            1756
//            NSDictionary *dic1=[json JSONValue];
//            1757
//            array=[dic1 objectForKey:@"key1"];
//            1758
//            dic=[array objectAtIndex:0];
//            1759
//            NSString *st=[dic objectForKey:@"key2"];
//            1760
//            NSLog(@"%@",st );
//            1761
//            
//            1762
//            2 .SBJson网络传输数据：要加入第三方协议：SBJson 冰岛入SBJson.h头文件
//            1763
//            NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://localhost/1.gif"]];
//            1764
//            UIImage *image=[UIImage imageWithData:data];
//            1765
//            UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//            1766
//            imageview.image=image;
//            1767
//            [self.view addSubview:imageview];
//            1768
//            
//            1769
//            3.SDWebImage 网络传输
//            1770
//            //使用SDWebImage 传输数据，而且它是个自带缓存打开过，再打开时还存在；
//            1771
//            在使用图片按钮传输时要引人头文件
//            1772
//#import "UIImageView+WebCache.h"
//            1773
//#import "UIButton+WebCache.h"
//            1774
//            NSURL *url=[NSURL URLWithString:@"http://localhost/1.gif"];
//            1775
//            UIImageView *image =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//            1776
//            [image setImageWithURL:url];
//            1777
//            [self.view addSubview:image];
//            1778
//            [image release];
//            1779
//            4.ASIHTTPRequest网络传输???????
//            1780
//            首先要导人四个库文件libz.1.2.5.dylib,CFNetwork.framework,
//            1781
//            SystemConfiguration.framework,MobileCoreServices.framework
//            1782
//            引人头文件 #import "ASIHTTPRequest.h" 同时要添加ASIHTTPRequest.h协议；设置代理
//            1783
//            NSURL *url=[NSURL URLWithString:@"http://localhost/1.gif"];
//            1784
//            //使ASIHTTPRequest 传输数据；注意这个需要加第三方协议
//            1785
//            ASIHTTPRequest *request=[ASIHTTPRequest requestWithURL:url];
//            1786
//            request.delegate=self;
//            1787
//            [request startSynchronous];
//            1788
//            //开始同步
//            1789
//            [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
//            1790
//            //网络请求，如果为yes，就一直旋转
//            1791
//            -(void)requestFinished:(ASIHTTPRequest *)request
//            1792
//            {
//                1793
//                UIImageView *imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//                1794
//                imageview.image=[UIImage imageWithData:request.responseData];
//                1795
//                [self.view addSubview:imageview];
//                1796
//            }
//            1797
//            
//            1798
//            5.异步传输  这种异步传输需要代理  <NSURLConnectionDataDelegate>
//            1799
//            
//            1800
//            /异步传输数据：优点：在传输数据没有完成前，可以对网页上的其他东西进行操作；
//            1801
//            [super viewDidLoad];
//            1802
//            NSURL *url=[NSURL URLWithString:@"http://localhost/1.gif"];
//            1803
//            //创建请求
//            1804
//            NSURLRequest *request=[NSURLRequest requestWithURL:url];
//            1805
//            //发送请求
//            1806
//            [NSURLConnection connectionWithRequest:request delegate:self];
//            1807
//            data1=[[NSMutableData alloc]init];
//            1808
//            imageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
//            1809
//            [self.view  addSubview:imageview];
//            1810
//            
//            1811
//        }
//        1812
//        //异步传输链接的代理函数：
//        1813
//        ／／链接响应时调用
//        1814
//        -(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
//        1815
//        {
//            1816
//            
//            1817
//            NSLog(@"didreceiveresponse");
//            1818
//        }
//        1819
//        ／／加载完成时调用
//        1820
//        -(void)connectionDidFinishLoading:(NSURLConnection *)connection
//        1821
//        {
//            1822
//            
//            1823
//            imageview.image=[UIImage imageWithData:data1];
//            1824
//            NSLog(@"connectiondidFinishload");
//            1825
//            
//            1826
//        }
//        1827
//        //反复调用不断接收新数据
//        1828
//        -(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
//        1829
//        {
//            1830
//            [data1 appendData:data];
//            1831
//            NSLog(@"didreceivedata");
//            1832
//        }
//        1833
//        ／／链接发生错误时响应；
//        1834
//        -(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
//        1835
//        {
//            1836
//            NSLog(@"error");
//            1837
//        }
//        1838
//        
//        1839
//        
//        1840
//        xml
//        1841
//        首先导人GData 文件， 然后通过在项目头文件中Build Phases中第三个选项中数添加libxml2 文件并将其移动到项目下面， 然后在 BuildSettings中在search paths中在 Header Search Paths 中添加路径／use／include／libxml2 这样就可用xml 读取网络文件了；
//        1842
//        1.将网络编码文件存入字符串；
//        1843
//        NSString *xmlstr=[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"xml" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
//        1844
//        2.将字符串转变成GDataXMLDocument 类行的文件；
//        1845
//        获取文件
//        1846
//        GDataXMLDocument *xmldoc=[[GDataXMLDocument alloc]initWithXMLString:xmlstr options:0 error:nil];
//        1847
//        3.从文件中获取根元素；
//        1848
//        //获取跟元素
//        1849
//        GDataXMLElement * rootEle=[xmldoc rootElement];
//        1850
//        4.获取元素的值
//        1851
//        rootEle.stringValue
//        1852
//        5.获取根元素下面的某项值，用所在位置获取；也可以通过数组把他们全都放到数组，在从数组中获取；
//        1853
//        GDataXMLElement *sysele=(GDataXMLElement *)[rootEle childAtIndex:0];
//        1854
//        GDataXMLElement cityele=[sysele childAtIndex:0];
//        1855
//        NSArray *array=[sysele children];
//        1856
//        6.获取元素的 XMLString属性值； 获取属性stringValue值 属性名值name
//        1857
//        array =[intel children];
//        1858
//        for (GDataXMLElement * itemele in array) {
//            1859
//            //itemele.attributes 是元素得属性 是个数组；
//            1860
//            for (GDataXMLElement * item in itemele.attributes) {
//                1861
//                //打印元素属性；会将每个属性和值一起打印出来；
//                1862
//                NSLog(@"%@",item.XMLString);
//                1863
//                //打印属性得值
//                1864
//                NSLog(@"%@",item.stringValue);
//                1865
//                //打印属性名字
//                1866
//                NSLog(@"%@",item.name);
//                1867
//            }
//            1868
//        }
//        1869
//        7.通过元素名获取元素；
//        1870
//        //通过元素名获取元素
//        1871
//        GDataXMLElement *codeele=[[sysele elementsForName:@"areaCode"] objectAtIndex:0];
//        1872
//        8.通过路径获取获取元素；
//        1873
//        //XPATH 通过路径获取元素  注意通过路径取出的元素因为不知道保函几个元素，所以是数组类行要想取得得用objectindexat 根据位置获取其中得某一个；
//        1874
//        //绝对路径
//        1875
//        GDataXMLElement *cityele=[[xmldoc nodesForXPath:@"root/systemConfig/CityName" error:nil] objectAtIndex:0];
//        1876
//        NSLog(@"%@",cityele.stringValue);
//        1877
//        //通过层次写；
//        1878
//        cityele=[[xmldoc nodesForXPath:@"//CityName" error:nil] objectAtIndex:0];
//        1879
//        NSLog(@"%@",cityele.stringValue);
//        1880
//        //获取在这个层次得所以item
//        1881
//        NSArray *array=[xmldoc nodesForXPath:@"//Item" error:nil];
//        1882
//        //获取某个目录下得item并通过item［i］打印它的元素；注意是从元素标号1开始；
//        1883
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[1]" error:nil];
//        1884
//        GDataXMLElement *tem =[[xmldoc nodesForXPath:@"//Item" error:nil] o  bjectAtIndex:0];
//        1885
//        GDataXMLElement *ele =[tem.attributes objectAtIndex:0];
//        1886
//        //元素得属性指针开始从0位置；
//        1887
//        NSLog(@"%@",ele.stringValue);
//        1888
//        
//        1889
//        //打印最后一个元素
//        1890
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[last()]" error:nil];
//        1891
//        //打印某个范围内的元素通过位置号判断
//        1892
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[position()<3]" error:nil];
//        1893
//        //获取不同节点下的元素
//        1894
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[position()<3]｜//  ****/item[2]" error:nil];
//        1895
//        //通过关键字获取值；
//        1896
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[@key=2]" error:nil];
//        1897
//        array=[xmldoc nodesForXPath:@"//intentionLevel/Item[@key<3]" error:nil];
//        1898
//        
//        1899
//        在接收取出来的元素时，一般取出来的是数组，要用数组接，如果是单个元素要用数组的object 0去转换成对象；然后再取其中的属性；
//        1900
//        
//        1901
//        网页刷新
//        1902
//        准备工作：
//        1903
//        1.再刷新网页时用到了第三方代理，在引入函数前要先添加文件
//        1904
//        EGOTableViewPullRefresh
//        1905
//        2。添加库文件：QuartzCore.framework
//        1906
//        3.加入代理：1.UITableViewDelegate,
//        1907
//        2.UITableViewDataSource,
//        1908
//        3.EGORefreshTableHeaderDelegate
//        1909
//        viewdidload函数内容：
//        1910
//        1.创建获得内容得数组；
//        1911
//        dataArray=[[NSMutableArray alloc]initWithObjects:@"a",@"b",@"c",@"d" ,nil];
//        1912
//        2.创建table 并设置代理；
//        1913
//        table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
//        1914
//        table.delegate=self;
//        1915
//        table.dataSource=self;
//        1916
//        [self.view addSubview: table];
//        1917
//        [table release];
//        1918
//        3.创建刷新视图
//        1919
//        refreashview=[[EGORefreshTableHeaderView alloc]initWithFrame:CGRectMake(0, -460, 320, 460)];
//        1920
//        refreashview.delegate=self;
//        1921
//        4.添加刷新视图到table中；
//        1922
//        [table addSubview:refreashview];
//        1923
//        //更新上次刷新时间，如果没有只返回date化上次更新时间不跟着刷新
//        1924
//        [refreashview refreshLastUpdatedDate];
//        1925
//        
//        1926
//    }
//    1927
//    代理函数内容
//    1928
//    加载时调用是table 它是个bool值，时时自动调用
//    1929
//    -(BOOL)egoRefreshTableHeaderDataSourceIsLoading:(EGORefreshTableHeaderView *)view
//    1930
//    {
//        1931
//        NSLog(@"isloading");
//        1932
//        return isloading;
//        1933
//        //是否正在刷新，如果返回no就会在次加载数据，会让数据加载过多
//        1934
//    }
//    1935
//    时间函数timer调用得方法
//    1936
//    -(void)refresdata
//    1937
//    {   //更新数据；
//        1938
//        [dataArray addObject:@"new"];
//        1939
//        [table reloadData];
//        1940
//        [refreashview egoRefreshScrollViewDataSourceDidFinishedLoading:table];
//        1941
//        一但更新完以后就要把加载函数反回得bool值改变为no便于下次加载；
//        1942
//        isloading=NO;
//        1943
//    }
//    1944
//    ／／加载更新出发得更新函数；
//    1945
//    -(void)egoRefreshTableHeaderDidTriggerRefresh:(EGORefreshTableHeaderView *)view
//    1946
//    {
//        1947
//        isloading=YES;
//        1948
//        [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(refresdata) userInfo:nil repeats:NO];
//        1949
//        //注意这里得重复要设置为no，调用一次这个函数才添加一个timer，
//        1950
//        NSLog(@"didTrigger");
//        1951
//        
//        1952
//    }
//    1953
//    ／／屏幕滚动时调用
//    1954
//    -(void)scrollViewDidScroll:(UIScrollView *)scrollView
//    1955
//    {
//        1956
//        ／／ 调用这个函数用于调用加载函数并根据不同的状态设置位置；
//        1957
//        [refreashview egoRefreshScrollViewDidScroll:scrollView];
//        1958
//    }
//    1959
//    -(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
//    1960
//    {   根据现在更新的状态，打开加载的控制器；
//        1961
//        [refreashview egoRefreshScrollViewDidEndDragging:scrollView];
//        1962
//    }
//    1963
//    //添加上次刷新时间；
//    1964
//    -(NSDate *)egoRefreshTableHeaderDataSourceLastUpdated:(EGORefreshTableHeaderView *)view
//    1965
//    {
//        1966
//        return [NSDate date];
//        1967
//    }
//    1968
//    ／／创建tableview的基本函数；
//    1969
//    -(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//    1970
//    {
//        1971
//        return dataArray.count;
//        1972
//    }
//    1973
//    -(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//    1974
//    {
//        1975
//        UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"ID"];
//        1976
//        if ( cell==nil) {
//            1977
//            cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ID"] autorelease];
//            1978
//        }
//        1979
//        
//        1980
//        cell.textLabel.text=[dataArray objectAtIndex:indexPath.row];
//        1981
//        return  cell;
//        1982
//    }
//    1983
//    -(void)dealloc
//    1984
//    {
//        1985
//        [dataArray release];
//        1986
//        [super dealloc];
//        1987
//    }
//    1988
//    
//    1989
//    9.26 周三
//    1990
//    数据库操作；
//    1991
//    进入数据库
//    1992
//    sqlite3 data.db
//    1993
//    退出数据库
//    1994
//    .quit
//    1995
//    创建表
//    1996
//    create table Students(name, score);
//    1997
//    插入数据前看是否有表,没表就创建
//    1998
//    create table if not exists Students(name,score);
//    1999
//    插入数据
//    2000
//    insert into Students values('kety',89);
//    2001
//    删除表
//    2002
//    drop  table Stufents
//    2003
//    删除某项数据
//    2004
//    delete from Students where name='hau';
//    2005
//    修改数据
//    2006
//    update Students set score=55 where name='hahan';
//    2007
//    排序： 降序排； 默认升序排
//    2008
//    select * from Book order by price desc;
//    2009
//    排序后显示前几项
//    2010
//    select * from Book order by price desc limit 5;
//    2011
//    查询某个条件范围的全部数据
//    2012
//    select * from Book where price>40;
//    2013
//    查询内容中的某一项
//    2014
//    select name from Book;
//    2015
//    两个表关联查询
//    2016
//    select Students.name, Student1.pro, Students.score from Students join Student1 on Students.name=Student1.name;
//    2017
//    查询纪录数量；
//    2018
//    select count(*)from Students;
//    2019
//    
//    2020
//    前台操作和数据库链接
//    2021
//    注意：在操作前要导入文件libsqlite3.dylib   导入头文件#import "sqlite3.h"；
//    2022
//    self.PATH=[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"data.db"];
//    2023
//    注意： PATH 是接收路径的字符串变量，注意前面要加上self；
//    2024
//    //路径的创建，stringByAppendingPathComponent 给字符串拼接时加斜杠；
//    2025
//    //NSDocumentDirectory 永久保存数据；
//    2026
//    在出发事件中进行后台操作；
//    2027
//    增加纪录
//    2028
//    -(void)add
//    2029
//    {
//        2030
//        //打开数据库
//        2031
//        sqlite3 *sql;
//        2032
//        int res =sqlite3_open([PATH UTF8String], &sql);
//        2033
//        if (res!=SQLITE_OK) {
//            2034
//            NSLog(@"open error");
//            2035
//            return;
//            2036
//        }
//        2037
//        //创建表
//        2038
//        NSString *sqlStr=@"create table if not exists Students(name,score)";
//        2039
//        res=sqlite3_exec(sql, [sqlStr UTF8String], NULL, NULL, NULL);
//        2040
//        if (res!=SQLITE_OK) {
//            2041
//            NSLog(@"Create error");
//            2042
//            sqlite3_close(sql);
//            2043
//            return;
//            2044
//        }
//        2045
//        sqlStr =[NSString stringWithFormat:@"insert into Students values('%@','%@')",namefield.text,scorefield.text];
//        2046
//        res=sqlite3_exec(sql, [sqlStr UTF8String], NULL, NULL, NULL);
//        2047
//        if (res!=SQLITE_OK) {
//            2048
//            NSLog(@"insert error");
//            2049
//        }
//        2050
//        sqlite3_close(sql);
//        2051
//    }
//    2052
//    
//    2053
//    删除纪录
//    2054
//    -(void)del
//    2055
//    {
//        2056
//        sqlite3 *sql;
//        2057
//        int res =sqlite3_open([PATH UTF8String], &sql);
//        2058
//        if (res!=SQLITE_OK) {
//            2059
//            NSLog(@"open error");
//            2060
//            return;
//            2061
//        }
//        2062
//        NSString *sqlStr=[NSString stringWithFormat:@"delete from Students where name='%@'",namefield.text];
//        2063
//        res=sqlite3_exec(sql, [sqlStr UTF8String], NULL, NULL, NULL);
//        2064
//        if (res!=SQLITE_OK) {
//            2065
//            NSLog(@"delete error");
//            2066
//        }
//        2067
//        sqlite3_close(sql);
//        2068
//    }
//    2069
//    
//    2070
//    更新纪录
//    2071
//    -(void)upd
//    2072
//    {
//        2073
//        sqlite3 * sql;
//        2074
//        int res =sqlite3_open([PATH UTF8String],&sql );
//        2075
//        if (res!=SQLITE_OK) {
//            2076
//            NSLog(@"open error");
//            2077
//            return;
//            2078
//        }
//        2079
//        NSString *sqlStr=[NSString stringWithFormat:@"update Students set score='%@' where name='%@'",scorefield.text,namefield.text];
//        2080
//        res=sqlite3_exec(sql, [sqlStr UTF8String], NULL, NULL, NULL);
//        2081
//        if (res!=SQLITE_OK) {
//            2082
//            NSLog(@"UPDATE ERROR");
//            2083
//            return;
//            2084
//        }
//        2085
//        sqlite3_close(sql);
//        2086
//    }
//    2087
//    
//    2088
//    查询纪录
//    2089
//    -(void)sel
//    2090
//    {
//        2091
//        sqlite3 *sql;
//        2092
//        int res=sqlite3_open([PATH UTF8String], &sql);
//        2093
//        if (res!=SQLITE_OK) {
//            2094
//            NSLog(@"open error");
//            2095
//            return;
//            2096
//        }
//        2097
//        创建预处理
//        2098
//        sqlite3_stmt *stmt;
//        2099
//        NSString *sqlStr=@"select *from Students";
//        2100
//        res=sqlite3_prepare_v2(sql, [sqlStr UTF8String], -1, &stmt, NULL);
//        2101
//        if (res!=SQLITE_OK) {
//            2102
//            NSLog(@"prepare error");
//            2103
//            return;
//            2104
//        }
//        2105
//        while (sqlite3_step(stmt)==SQLITE_ROW) {
//            2106
//            char *name=(char *)sqlite3_column_text(stmt, 0);
//            2107
//            char *score=(char *)sqlite3_column_text(stmt, 1);
//            2108
//            NSLog(@"%s %s",name,score);
//            2109
//        }
//        2110
//        sqlite3_close(sql);
//        2111
//    }
//    2112
//    
//    2113
//    创建新的线程：作用在主线程执行时同时调用另一个线程使不同操作同时执行；用于网络和数据库传送数据时不影响执行其他内容
//    2114
//    创建新线程：
//    2115
//    //开辟新线程；把读取网络和数据库的内容可以开辟新线程，
//    2116
//    [NSThread detachNewThreadSelector:@selector(thread ) toTarget:self withObject:nil];
//    2117
//    想要在新线程中执行的内容可以可以写到新线程调用的函数中
//    2118
//    -(void)thread
//    2119
//    {
//        2120
//        //通过函数跳回主线程；
//        2121
//        [self performSelectorOnMainThread:@selector(main1) withObject:nil waitUntilDone:nil];//延时调用函数
//        2122
//        
//        2123
//        ｝
//        2124
//        计时器也可以开辟新线程；所以在网络和数据库传输数据时可以用计时器来替代进程
//        2125
//        //timer也会开辟新线程；可以用来代替线程函数；
//        2126
//        [NSTimer scheduledTimerWithTimeInterval:0.0 target:self selector:@selector(timer) userInfo:nil repeats:YES];
//        2127
//        
//        2128
//        在数据库操作时添加，删除，更新的操作思想：
//        2129
//        1.打开数据库；
//        2130
//        2.创建操作语句；
//        2131
//        3.执行语句；
//        2132
//        4.关闭数据库；
//        2133
//        
//        2134
//        
//        2135
//        9.27 周四
//        2136
//        引入第三方协议和后台数据库链接；
//        2137
//        1.先引入数据库文件libsqlite3.dylib 再添加第三方文件FMDB, 引入头文件
//        2138
//#import "FMDatabase.h"
//        2139
//        
//        2140
//        2.实现增，删，改，查功能
//        2141
//        -(void)add
//        2142
//        {   //绑定数据库
//            2143
//            FMDatabase *db=[FMDatabase databaseWithPath:PATH];
//            2144
//            BOOL res =[db open];
//            2145
//            if (res==NO) {
//                2146
//                NSLog(@"open error");
//                2147
//                return;
//                2148
//            }
//            2149
//            //执行语句；
//            2150
//            res=[db executeUpdate:@"create table if not exists Students (name,score)"];
//            2151
//            if (res==NO) {
//                2152
//                NSLog(@"creat error");
//                2153
//                [db close];
//                2154
//                return;
//                2155
//            }
//            2156
//            res=[db executeUpdate:@"insert into Students values(?,?)",namefield.text,scorefield.text];
//            2157
//            if (res==NO) {
//                2158
//                NSLog(@"insert error");
//                2159
//            }
//            2160
//            [db close];
//            2161
//            //  NSData *data=[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType:@"png"]  ];
//            2162
//        }
//        2163
//        //delete
//        2164
//        -(void)del
//        2165
//        {
//            2166
//            FMDatabase *db=[FMDatabase databaseWithPath:PATH];
//            2167
//            BOOL res =[db open];
//            2168
//            if (res==NO) {
//                2169
//                NSLog(@"open error");
//                2170
//                return;
//                2171
//            }
//            2172
//            res=[db executeUpdate:@"delete from Students where name =?",namefield.text];
//            2173
//            if (res==NO) {
//                2174
//                NSLog(@"delete error");
//                2175
//            }
//            2176
//            [db close];
//            2177
//        }
//        2178
//        -(void)upd
//        2179
//        {
//            2180
//            FMDatabase *db=[FMDatabase databaseWithPath:PATH];
//            2181
//            BOOL res=[db open];
//            2182
//            if (res==NO) {
//                2183
//                NSLog(@"open error");
//                2184
//                return;
//                2185
//            }
//            2186
//            res=[db executeUpdate:@"update set score=77 from Students where name=?",namefield.text];
//            2187
//            if (res==NO) {
//                2188
//                NSLog(@"update error");
//                2189
//            }
//            2190
//            [db close];
//            2191
//        }
//        2192
//        -(void)sel
//        2193
//        {
//            2194
//            FMDatabase *db=[FMDatabase databaseWithPath:PATH];
//            2195
//            BOOL res=[db open];
//            2196
//            if (res==NO) {
//                2197
//                NSLog(@"open error");
//                2198
//                return;
//                2199
//            }
//            2200
//            预处理数据
//            2201
//            FMResultSet *set=[db executeQuery:@"select * from Students"];
//            2202
//            遍历数据
//            2203
//            while ([set next]) {
//                2204
//                NSString *name=[set stringForColumn:@"name"];
//                2205
//                NSString *score=[set stringForColumnIndex:1];
//                2206
//                NSLog(@"%@ %@",name ,score);
//                2207
//            }
//            2208
//            如果图片经过编码转换成data类型存入数据库取出来的方式如下；
//            2209
//            1.从预处理中取出图片的二进制编码
//            2210
//            NSData *data=[set objectForColumnIndex:1];
//            2211
//            2.创建存放图片的控件；
//            2212
//            UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(50, 300, 100, 100)];
//            2213
//            3.将数据转换成image添加到控件中；
//            2214
//            image.image=[UIImage imageWithData:data];
//            2215
//            [self.view addSubview:image];
//            2216
//            [db close];
//            2217
//            
//            2218
//        }
//        2219
//        sdafggfdhfjgsdfhgjfgkhljkgjfhgfdsaDFGH
//        2220
//        其他类型数据存入数据库
//        2221
//        在数据库存储中，可以存储nsstring，nsnumber ，nsdata ;如果想储存其他类型的数字需要将其内容都转换成nsdata类型；
//        2222
//        将image转换成data类型；然后通过获取data再将其转换成image类型：
//        2223
//        1.创建image
//        2224
//        UIImage *image= [UIImage imageNamed:@"5.png" ];
//        2225
//        2.创建data用于存入数据；
//        2226
//        NSMutableData *data=[NSMutableData dataWithCapacity:0];
//        2227
//        3.创建编码器
//        2228
//        NSKeyedArchiver *arch= [[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
//        2229
//        4.编码图片；
//        2230
//        [arch encodeObject:image forKey:@"image"];
//        2231
//        5.完成编码
//        2232
//        [arch finishEncoding];
//        2233
//        6.释放；
//        2234
//        [arch release];
//        2235
//        7.创建解码器
//        2236
//        NSKeyedUnarchiver *unaarev=[[NSKeyedUnarchiver alloc]initForReadingWithData:data];
//        2237
//        8.解码图片；
//        2238
//        UIImage *image1=[unaarev decodeObjectForKey:@"image"];
//        2239
//        9.解码完成
//        2240
//        [unaarev finishDecoding];
//        2241
//        10.释放
//        2242
//        [unaarev release];
//        2243
//        11.展示图片
//        2244
//        UIImageView * image2=[[UIImageView alloc]initWithFrame:CGRectMake(30, 300, 100, 100)];;
//        2245
//        image2.image=image1;
//        2246
//        [self.view addSubview:image2];
//        2247
//        
//        2248
//        聊天对话框的的气泡拉伸思想： 为了达到不矢真，横向延伸要用用竖向的一条像素按所需长度复制；竖向延伸要拿横向的一条像素按所需长度延伸；
//        2249
//        具体实现：
//        2250
//        //聊天气泡拉伸
//        2251
//        1.创建气泡
//        2252
//        image =[UIImage imageNamed:@"5.png"]
//        2253
//        cap：帽子扩展延伸；
//        2254
//        2。拉伸气泡函数
//        2255
//        image=[image stretchableImageWithLeftCapWidth:14 topCapHeight:14];
//        2256
//        image2.image=image;
//        2257
//        NSString *str=@"abcdet";
//        2258
//        //得到str的尺寸；
//        2259
//        CGSize size=[str sizeWithFont:[UIFont systemFontOfSize:12.0] constrainedToSize:CGSizeMake(200, 1000) lineBreakMode:UILineBreakModeWordWrap];
//        2260
//        
//        2261
//        10.8 周一
//        2262
//        向服务器上传数据
//        2263
//        1.先添加第三方文件ASIHTTPRequst 导人第三方文件：#import "ASIFormDataRequest.h"  然后添加四个数据库文件 libz.1.2.5.dylib ,MobileCoreServices.framework, Systemconfiguration.framework;, CFNetwork.framework
//        2264
//        2. 实现上传：
//        2265
//        1.创建与服务器链接对象；//192.168 .88.8  局域网    获得局域网服务器的网址
//        2266
//        NSURL *url=[NSURL URLWithString:@"http://169.254.59.31/pk.php"];
//        2267
//        2.创建向服务器发出请求的对象；
//        2268
//        ASIFormDataRequest *asiform=[ASIFormDataRequest requestWithURL:url];
//        2269
//        3.设置上传内容：上传内容可以是文件，也可以是二进制数据
//        2270
//        一种函数 [asiform setFile:[[NSBundle mainBundle]pathForResource:@"5" ofType:@"jpg"] forKey:@"image"];
//        2271
//        第二种函数：[asiform setFile:[[NSBundle mainBundle]pathForResource:@"5" ofType:@"jpg"] withFileName:@"2.png" andContentType:@"image/jpg" forKey:@"image"];
//        2272
//        不同点：第二种会在服务器端显示你所设置的文件名，如果是二进制数据后者会显示类型，如果是图片会显示图片的缩略图，如果用第一种不能显示其缩略图；
//        2273
//        4.设置代理，这样就可以使用其函数了；包括上传成功失败的函数
//        2274
//        5.最后让其上传执行
//        2275
//        [asiform startSynchronous];
//        2276
//        -(void)viewDidLoad
//        2277
//        {
//            2278
//            [super viewDidLoad];
//            2279
//            /*
//             2280
//             网络接口路径
//             2281
//             169.254.59.31/pk.php
//             2282
//             图像上传 post
//             2283
//             参数
//             2284
//             图像 image
//             2285
//             返回：不同内容代表不同的是否成功
//             2286
//             {}
//             2287
//             
//             2288
//             */
//            2289
//            //创建链接
//            2290
//            NSURL *url=[NSURL URLWithString:@"http://169.254.59.31/pk.php"];
//            2291
//            //创建数据请求
//            2292
//            ASIFormDataRequest *asiform=[ASIFormDataRequest requestWithURL:url];
//            2293
//            
//            2294
//            1. [asiform setFile:[[NSBundle mainBundle]pathForResource:@"5" ofType:@"jpg"] forKey:@"image"];
//            2295
//            2. [asiform setFile:[[NSBundle mainBundle]pathForResource:@"5" ofType:@"jpg"] withFileName:@"2.png" andContentType:@"image/jpg" forKey:@"image"];
//            2296
//            NSData *data=[NSData dataWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"5" ofType:@"jpg" ]];
//            2297
//            //上传data类型的内容显示类型；
//            2298
//            [asiform setData:data forKey:@"image"];
//            2299
//            //上传data类型以文件命名，在服务器端显示上传内容；
//            2300
//            [asiform setData:data withFileName:@"5.jpg" andContentType:@"image/jpg" forKey:@"image"];
//            2301
//            asiform.delegate=self;
//            2302
//            [asiform startSynchronous];
//            2303
//        }
//        2304
//        //用于提示上传是否成功或失败；
//        2305
//        -(void)requestFailed:(ASIHTTPRequest *)request
//        2306
//        {
//            2307
//            NSLog(@"error");
//            2308
//            
//            2309
//        }
//        2310
//        -(void)requestFinished:(ASIHTTPRequest *)request
//        2311
//        {
//            2312
//            NSLog(@"ok");
//            2313
//        }
//        2314
//        
//        2315
//        10.9周二
//        2316
//        mp3播放器制作
//        2317
//        1.加载库文件 AVFoundation.framework和QuartzCore.framework;( 没弄明白这个文件的作用，因为加不加他没什么作用)然后引入头文件
//        2318
//#import <AVFoundation/AVFoundation.h>
//        2319
//#import <QuartzCore/QuartzCore.h>
//        2320
//        2.mp3实现代码
//        2321
//        -(void)viewDidLoad
//        2322
//        {
//            2323
//            [super viewDidLoad];
//            2324
//            ／／创建播放按钮，并分别为添加事件
//            2325
//            UIButton *play=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            2326
//            play.frame=CGRectMake(20, 100, 80, 30);
//            2327
//            [play addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside ];
//            2328
//            [play setTitle:@"play" forState:UIControlStateNormal];
//            2329
//            [self.view addSubview:play];
//            2330
//            UIButton *pause=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            2331
//            pause.frame=CGRectMake(120, 100, 80, 30);
//            2332
//            [pause setTitle:@"pause" forState:UIControlStateNormal];
//            2333
//            [pause addTarget:self action:@selector(pause) forControlEvents:UIControlEventTouchUpInside];
//            2334
//            [self.view addSubview:pause];
//            2335
//            UIButton *stop=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            2336
//            stop.frame=CGRectMake(220, 100, 80, 30);
//            2337
//            [stop addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
//            2338
//            [stop setTitle:@"stop" forState:UIControlStateNormal];
//            2339
//            [self.view addSubview:stop];
//            2340
//            ／／创建数据链接
//            2341
//            NSURL *url=[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"withyou" ofType:@"mp3"]];
//            2342
//            player=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:Nil];
//            2343
//            //提前载入随时准备播放
//            2344
//            [player prepareToPlay];
//            2345
//            ／／创建滑条用于控制音量，声道和播放速率
//            2346
//            UISlider *volslider=[[UISlider alloc]initWithFrame:CGRectMake(50, 50, 200, 0)];
//            2347
//            //音量控制
//            2348
//            volslider.minimumValue=0.0;
//            2349
//            volslider.maximumValue=1.0;
//            2350
//            //声道
//            2351
//            volslider.minimumValue=-1.0;
//            2352
//            volslider.minimumValue=1.0;
//            2353
//            // 变速
//            2354
//            player.enableRate=YES;// 开启加速功能；
//            2355
//            volslider.minimumValue=0.5;
//            2356
//            volslider.maximumValue=2.0;
//            2357
//            volslider.value=1.0;
//            2358
//            ／／为滑条添加滑动事件，注意出发事件是滑条值改便时；
//            2359
//            [volslider addTarget:self action:@selector(volslider:) forControlEvents:UIControlEventValueChanged];
//            2360
//            [self.view addSubview:volslider];
//            2361
//            [volslider release];
//            2362
//            ／／创建进度条，控制音频播放进度
//            2363
//            UISlider *proslider=[[UISlider alloc]initWithFrame:CGRectMake(50, 20, 220, 0)];
//            2364
//            ／／设置进度条最大最小播放百分比
//            2365
//            proslider.minimumValue=0.0;
//            2366
//            proslider.maximumValue=1.0;
//            2367
//            proslider.value=0.0;
//            2368
//            proslider.tag=100;
//            2369
//            [proslider addTarget:self action:@selector(progressSlider:) forControlEvents:UIControlEventValueChanged];
//            2370
//            [self.view addSubview:proslider];
//            2371
//            [proslider release];
//            2372
//            ／／e ，j 是防止暂停，停止点击超过一次时多次释放timer导致崩溃
//            2373
//            e=1;
//            2374
//            j=1;
//            2375
//            ／／设置代理
//            2376
//            player.delegate=self;
//            2377
//            ／／设置音频频率显示条
//            2378
//            for (int i=0; i<4; i++) {
//                2379
//                pro[i]=[[UIProgressView alloc]initWithFrame:CGRectMake(50*i, 440, 200, 0)];
//                2380
//                [self.view addSubview:pro[i]];
//                2381
//                [pro[i] release];
//                2382
//                ／／旋转进度条，因为要的是弧度所以参数要改变成弧度制
//                2383
//                pro[i].transform=CGAffineTransformMakeRotation(270 *M_PI/180);
//                2384
//                //设置铆点用于设置旋转围绕点；
//                2385
//                pro[i].layer.anchorPoint=CGPointMake(0.0, 0.0);
//                2386
//            }
//            2387
//            //音频可控用于进度条随音频变动
//            2388
//            player.meteringEnabled=YES;
//            2389
//            
//            2390
//        }
//        2391
//        
//        2392
//        //播放完成时调用
//        2393
//        -(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
//        2394
//        {
//            2395
//            NSLog(@"success");
//            2396
//            
//            2397
//        }
//        2398
//        ／／进度条随音频改变
//        2399
//        -(void)progressSlider:(UISlider *)slider
//        2400
//        {
//            2401
//            player.currentTime=player.duration*slider.value;
//            2402
//            
//            2403
//        }
//        2404
//        -(void)volslider:(UISlider *)slider
//        2405
//        {
//            2406
//            //声音大小控制
//            2407
//            player.volume=slider.value;
//            2408
//            //声道控制
//            2409
//            player.pan=slider.value;
//            2410
//            //播放速度控制
//            2411
//            player.rate=slider.value;
//            2412
//            
//            2413
//        }
//        2414
//        ／／时间控制器调用的函数
//        2415
//        -(void)refresh
//        2416
//        {
//            2417
//            UISlider *proslider=(UISlider *)[self.view viewWithTag:100];
//            2418
//            proslider.value=player.currentTime/player.duration;
//            2419
//            [player updateMeters];
//            2420
//            //刷新频率
//            2421
//            pro[0].progress=[player peakPowerForChannel:0]/-100;
//            2422
//            pro[1].progress=[player peakPowerForChannel:1]/-100;
//            2423
//            pro[2].progress=[player averagePowerForChannel:0]/-100;
//            2424
//            pro[3].progress=[player averagePowerForChannel:1]/-100;
//            2425
//        }
//        2426
//        ／／播放控制 用添加时间器来控制
//        2427
//        -(void)play
//        2428
//        {
//            2429
//            [player play];
//            2430
//            timer=[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(refresh) userInfo:nil repeats:YES];
//            2431
//            e=1;
//            2432
//            j=1;
//            2433
//        }
//        2434
//        ／／停止控制 注意e，j是分别用于控制停止按钮，暂停时间器释放，避免时间器重复释放导致的崩溃；
//        2435
//        -(void)stop
//        2436
//        {
//            2437
//            if (e==1&&j==1) {
//                2438
//                [player stop];
//                2439
//                [timer invalidate];
//                2440
//                ／／如果按停止键，控制进度条也停止
//                2441
//                UISlider *proslider=(UISlider *)[self.view viewWithTag:100];
//                2442
//                player.currentTime=0.0;
//                2443
//                proslider.value=player.currentTime;
//                2444
//                e=0;
//                2445
//                j=0;
//                2446
//            }
//            2447
//            else if(e==1&&j==0)
//                2448
//            {
//                2449
//                UISlider *proslider=(UISlider *)[self.view viewWithTag:100];
//                2450
//                player.currentTime=0.0;
//                2451
//                proslider.value=player.currentTime;
//                2452
//                e=0;
//                2453
//            }
//            2454
//        }
//        2455
//        ／／控制暂停
//        2456
//        -(void)pause
//        2457
//        {
//            2458
//            if (j==1&&e==1) {
//                2459
//                [player pause];
//                2460
//                [timer invalidate];
//                2461
//                j=0;
//                2462
//            }
//            2463
//        }
//        2464
//        -(void)dealloc
//        2465
//        {
//            2466
//            [player release];
//            2467
//            [super dealloc];
//            2468
//            
//            2469
//        }
//        2470
//        mp4播放器
//        2471
//        1.导人库文件 MeduaPlayer.framework. 并导人头文件#import <MediaPlayer/MediaPlayer.h>
//        2472
//        2. 代码实现解析
//        2473
//        -(void)viewDidLoad
//        2474
//        {
//            2475
//            ／／创建按钮用于播放控制
//            2476
//            UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
//            2477
//            button.frame=CGRectMake(120, 400, 70, 40);
//            2478
//            [button addTarget:self action:@selector(buttonclick) forControlEvents:UIControlEventTouchUpInside];
//            2479
//            ／／注意播放控制器又两种一种是播放控制器，MPMoviePlayerController 一种是带view的播放控制器；MPMoviePlayerViewController 二者的不同之处是前者要播放时是将其视图加入主控制视图中[self.view addSubview:play.view];，播放是调用播放函数[play play];后者是将播放控制交给MPMoviePlayerViewController：[self presentModalViewController:play animated:YES]; 这样一开始播放会全屏播放；
//            2480
//            ／／初始化MPMoviePlayerViewControlle，资源是当前文件
//            2481
//            play1=[[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"4" ofType:@"mp4"]]];
//            2482
//            // play=[[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"3" ofType:@"mp4"]]];
//            2483
//            ／／初始化MPMoviePlayerController 资源是当前文件
//            2484
//            play=[[MPMoviePlayerController alloc]initWithContentURL:[NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"4" ofType:@"mp4"]]];
//            2485
//            ／／设置播放器的 frame属性
//            2486
//            play.view.frame=CGRectMake(0, 0, 320, 300);
//            2487
//            //UIImageView *image= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.bmp"]];
//            2488
//            ／／设置播放器背景色，虽然能设置，但是不支持使用此属性；
//            2489
//            play.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"1.bmp"]];
//            2490
//            ／／播放器的控制属性，用于控制播放模式默认使嵌入模式；
//            2491
//            play.controlStyle=MPMovieControlStyleEmbedded;
//            2492
//            ／／播放重复模式，可以用于设置重复播放；
//            2493
//            play.repeatMode=MPMovieRepeatModeOne;
//            2494
//            [self.view addSubview:play.view];
//            2495
//            
//            2496
//            
//            2497
//            // play.allowsAirPlay=NO;
//            2498
//            [self.view addSubview:button];
//            2499
//        }
//        2500
//        ／／控制播放器播放；
//        2501
//        -(void)buttonclick
//        2502
//        {
//            2503
//            [self presentModalViewController:play animated:YES];
//            2504
//            [play play];
//            2505
//        }
//        2506
//        10.11周四   画图
//        2507
//        1.画图工具要新建一个uiview文件 然后在这个文件的.m文件中的- (void)drawRect:(CGRect)rect函数中画图
//        2508
//        2.画各中图的方法
//        2509
//        //图片的绘制
//        2510
//        UIImage* image = [UIImage imageNamed:@"5.png"];
//        2511
//        [image drawInRect:CGRectMake(100, 100, 100, 100)];
//        2512
//        // 文字
//        2513
//        NSString* str = @"ABC";
//        2514
//        [str drawInRect:CGRectMake(100, 100, 100, 50) withFont:[UIFont systemFontOfSize:30.0] lineBreakMode:UILineBreakModeClip alignment:UITextAlignmentLeft];
//        2515
//        
//        2516
//        //画直线
//        2517
//        创建画纸
//        2518
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2519
//        画起点：
//        2520
//        CGContextMoveToPoint(ref, 20, 100);
//        2521
//        添加点
//        2522
//        CGContextAddLineToPoint(ref, 300, 100);
//        2523
//        CGContextAddLineToPoint(ref, 150, 300);
//        2524
//        封闭图形
//        2525
//        CGContextClosePath(ref);
//        2526
//        
//        2527
//        //线条颜色
//        2528
//        CGContextSetStrokeColorWithColor(ref, [UIColor blueColor].CGColor);
//        2529
//        画路径 结束画图
//        2530
//        CGContextStrokePath(ref);
//        2531
//        
//        2532
//        //线宽
//        2533
//        CGContextSetLineWidth(ref, 20.0);
//        2534
//        //虚线
//        2535
//        float length[] = {40,20,40};
//        2536
//        CGContextSetLineDash(ref, 0, length, 2);
//        2537
//        //注意：参数二是从多少像素开始；
//        2538
//        参数三是用于实线和间隔循环的数组；
//        2539
//        参数四是用于要去数组的前几个数循环；
//        2540
//        //线段的样式
//        2541
//        CGContextSetLineCap(ref, kCGLineCapSquare);
//        2542
//        ／／线段连接处的连接样式
//        2543
//        CGContextSetLineJoin(ref, kCGLineJoinRound);
//        2544
//        CGContextStrokePath(ref);
//        2545
//        
//        2546
//        //矩形
//        2547
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2548
//        ／／设置矩形的fram
//        2549
//        CGContextAddRect(ref, CGRectMake(100, 100, 200, 100));
//        2550
//        ／／设置线宽
//        2551
//        CGContextSetLineWidth(ref, 10.0);
//        2552
//        ／／设施线的颜色
//        2553
//        CGContextSetStrokeColorWithColor(ref, [UIColor greenColor].CGColor);
//        2554
//        ／／设置填充色；
//        2555
//        CGContextSetFillColorWithColor(ref, [UIColor blueColor].CGColor);
//        2556
//        ／／注意下面的三个生成图像的方法的不同点
//        2557
//        1.第一个只画轮廓
//        2558
//        //CGContextStrokePath(ref);
//        2559
//        2.只填充图像的内部，不现实边框
//        2560
//        //CGContextFillPath(ref);
//        2561
//        3.边框和填充都显示，注意后面的参数式fill和stroke都有的，一般fill是内部填充的属性，而stroke是线的属性
//        2562
//        CGContextDrawPath(ref, kCGPathFillStroke);
//        2563
//        
//        2564
//        //圆
//        2565
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2566
//        设置圆的框架大小
//        2567
//        CGContextAddEllipseInRect(ref, CGRectMake(100, 100, 200, 100));
//        2568
//        CGContextStrokePath(ref);
//        2569
//        
//        2570
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2571
//        画自由圆
//        2572
//        设置圆心位置
//        2573
//        CGContextMoveToPoint(ref, 150, 150);
//        2574
//        画圆，第二，三个 是圆心位置，第四个参数是半径 第五，六个参数数是开始和结束的角，角是弧度制，最后一个参数是顺时针和逆时针旋转1表示顺时针，而表示逆时针
//        2575
//        CGContextAddArc(ref, 150, 150, 100, 0, 270 * M_PI / 180, 1);
//        2576
//        设置图形填充色
//        2577
//        CGContextSetFillColorWithColor(ref, [UIColor purpleColor].CGColor);
//        2578
//        填充图形；
//        2579
//        CGContextFillPath(ref);
//        2580
//        重新设置圆点 ，相当于在新的图层上画图，这样可以为每个图形设置不同的颜色；
//        2581
//        CGContextMoveToPoint(ref, 150, 150);
//        2582
//        CGContextAddArc(ref, 150, 150, 100, 0, 120 * M_PI / 180, 0);
//        2583
//        CGContextSetFillColorWithColor(ref, [UIColor orangeColor].CGColor);
//        2584
//        CGContextFillPath(ref);
//        2585
//        CGContextMoveToPoint(ref, 150, 150);
//        2586
//        CGContextAddArc(ref, 150, 150, 100, 120 * M_PI / 180, 270 * M_PI / 180, 0);
//        2587
//        CGContextSetFillColorWithColor(ref, [UIColor blueColor].CGColor);
//        2588
//        CGContextFillPath(ref);
//        2589
//        
//        2590
//        ／／画曲线
//        2591
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2592
//        设置初试点
//        2593
//        CGContextMoveToPoint(ref, 20, 400);
//        2594
//        画曲线 第二，三个参数是曲线始末两点切线的焦点坐标；后两个参数是末点的坐标；
//        2595
//        CGContextAddQuadCurveToPoint(ref, 0, 100, 300, 400);
//        2596
//        CGContextStrokePath(ref);
//        2597
//        
//        2598
//        ／／设置图形的透明度和阴影
//        2599
//        CGContextRef ref = UIGraphicsGetCurrentContext();
//        2600
//        CGContextAddRect(ref, CGRectMake(100, 100, 150, 150));
//        2601
//        CGContextSetLineWidth(ref, 10.0);
//        2602
//        CGContextSetStrokeColorWithColor(ref, [UIColor blueColor].CGColor);
//        2603
//        CGContextSetFillColorWithColor(ref, [UIColor redColor].CGColor);
//        2604
//        ／／设置图形的透明度
//        2605
//        CGContextSetAlpha(ref, 0.5);
//        2606
//        ／／设置图形阴影 第二个参数是阴影向又向下的偏移量 ，最后一个参数是羽化程度
//        2607
//        CGContextSetShadow(ref, CGSizeMake(20, 20), 10);
//        2608
//        CGContextDrawPath(ref, kCGPathFillStroke);
//        2609
//        动画效果总结
//        2610
//        1.以前给uiview 添加动画效果；
//        2611
//        //    [UIView beginAnimations:nil context:nil];
//        2612
//        //    [UIView setAnimationDuration:1];
//        2613
//        //    //设置动画快慢
//        2614
//        设置动画的方向
//        2615
//        //    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        2616
//        
//        2617
//        //    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
//        2618
//        //    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
//        2619
//        //    [UIView setAnimationDelegate: self];
//        2620
//        设置动画各阶段的调用的函数；
//        2621
//        //    [UIView setAnimationWillStartSelector:@selector(start)];
//        2622
//        //    [UIView setAnimationDidStopSelector:@selector(stop)];
//        2623
//        //    [UIView commitAnimations];
//        2624
//        CATransition 用时要导人库文件QuartzCore.framework 在加入头文件#import <QuartzCore/QuartzCore.h>
//        2625
//        初始化
//        2626
//        CATransition *trans=[CATransition animation];
//        2627
//        设置动画时间；
//        2628
//        trans.duration=1.0;
//        2629
//        设置动画进入曲线
//        2630
//        trans.timingFunction=UIViewAnimationCurveEaseInOut;
//        2631
//        设置动画的类型 类型可以直接用字符串；类型为：
//        2632
//        1.   1.  pageCurl            向上翻一页
//        2633
//        2.   pageUnCurl          向下翻一页
//        2634
//        3.   rippleEffect        滴水效果
//        2635
//        4.   suckEffect          收缩效果，如一块布被抽走
//        2636
//        5.   cube                立方体效果
//        2637
//        6.   oglFlip             上下翻转效果
//        2638
//        trans.type=@"rippleEffect";
//        2639
//        动画进入类型
//        2640
//        // trans.type=kCATransitionFromLeft;
//        2641
//        trans.subtype=kCATransitionFromTop;
//        2642
//        设置次动画；
//        2643
//        // trans.subtype=kCATransitionFromBottom;
//        2644
//        设置动画代理
//        2645
//        trans.delegate=self;
//        2646
//        //动画从多少开始；是整个动画的播放百分比
//        2647
//        //trans.startProgress=0.5;
//        2648
//        //动画结束动画从多少结束
//        2649
//        //trans.endProgress=0.8;
//        2650
//        [self.view.layer addAnimation:trans forKey:nil];
//        2651
//        [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
//        2652
//        
//        2653
//    }
//    2654
//    -(void)animationDidStart:(CAAnimation *)anim
//    2655
//    {
//        2656
//        NSLog(@"strat");
//        2657
//    }
//    2658
//    -(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
//    2659
//    {
//        2660
//        //flag 得值表示本次动画是否执行完了
//        2661
//        NSLog(@"stop %d",flag);
//        2662
//        
//        2663
//    }
//    2664
//    注：CATransition动画只能在图层上加，所以要切换页view时也要加到view.layer上；如在切换控制器时做法self.navigationController.view.layer addAnimation:tran forKey:nil];
//    2665
//    [self.navigationController pushViewController:rvc animated:NO];
//    2666
//    其中animated的yes或no没关系；
//    2667
//    
//    2668
//    
//    2669
//    
//    2670
//    10.12日 地图
//    2671
//    1.创建地图需要添加库文件：CoreLocation.framework //服务的  定位的 库文件
//    2672
//    MapKit.framework
//    2673
//    然后添加创建头文件地图类#import <MapKit/MapKit.h>
//    2674
//    因为用到了类的代理函数需添加协议    <CLLocationManagerDelegate,MKMapViewDelegate>
//    2675
//    2.代码实线
//    2676
//    创建两个类  MKMapView *map;
//    2677
//    CLLocationManager *localmanager;
//    2678
//    -(void)viewDidLoad
//    2679
//    {
//        2680
//        ／／创建地图
//        2681
//        map=[[MKMapView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//        2682
//        [self.view addSubview:map];
//        2683
//        //定位经纬
//        2684
//        CLLocationCoordinate2D coordinate=CLLocationCoordinate2DMake(40.035731, 116.351008);
//        2685
//        //范围 显示比例  越小越精确
//        2686
//        MKCoordinateSpan span=MKCoordinateSpanMake(0.5, 0.5);
//        2687
//        将经纬度和显示比例添加到 原始方位中，当打开地图时地图上显示此位置；
//        2688
//        MKCoordinateRegion region=MKCoordinateRegionMake(coordinate, span);
//        2689
//        map.region=region;
//        2690
//        ／／设置地图的显示类型，卫星图，普通地图，修改过的卫星图；
//        2691
//        //map.mapType=MKMapTypeSatellite;
//        2692
//        //map.mapType=MKMapTypeHybrid;
//        2693
//        
//        2694
//        
//        2695
//        ／／设置map代理
//        2696
//        map.delegate=self;
//        2697
//        ／／创建位置管理对象；
//        2698
//        localmanager=[[CLLocationManager alloc]init];
//        2699
//        // 地图显示精确度。越精确越费电
//        2700
//        localmanager.desiredAccuracy=kCLLocationAccuracyBest;
//        2701
//        //移动100米更新位置一次
//        2702
//        localmanager.distanceFilter=100;
//        2703
//        [localmanager startUpdatingLocation];
//        2704
//        
//        2705
//        localmanager.delegate=self;
//        2706
//        
//        2707
//        
//        2708
//        
//        2709
//        //添加大头针   大头针类是单独的文件；是普通的继承nsobject文件 用还需添加代理      <MKAnnotation>
//        2710
//        实线代理类中的函数
//        2711
//        ／／设置标题
//        2712
//        -(NSString *)title
//        2713
//        {
//            2714
//            return @"标题";
//            2715
//        }
//        2716
//        ／／设置副标题
//        2717
//        -(NSString *)subtitle
//        2718
//        {
//            2719
//            return @"副标题";
//            2720
//        }
//        2721
//        ／／设置将大头针插到的位置；
//        2722
//        -(CLLocationCoordinate2D)coordinate
//        2723
//        {
//            2724
//            CLLocationCoordinate2D cooridinate=CLLocationCoordinate2DMake(40.035731, 116.351008);
//            2725
//            return cooridinate;
//            2726
//        }
//        2727
//        
//        2728
//        为了能多插入几个大头针可以更改他们的属性，位置，我们可以创建一个初始化函数，通过创建不同的对象，实现多大头针；
//        2729
//        -(id)initWithTitle:(NSString *)title subTitle:(NSString *)subtitle coordinate:(CLLocationCoordinate2D)coordinate
//        2730
//        {
//            2731
//            self=[super init];
//            2732
//            if (self) {
//                2733
//                _title=title;
//                2734
//                _subtitle=subtitle;
//                2735
//                _coordinate=coordinate;
//                2736
//                这三个参数都是自定义属性；在返回函数中可以直接分别返回这几个属性
//                2737
//            }
//            2738
//            return self;
//            2739
//        }
//        2740
//        
//        2741
//        
//        2742
//        
//        2743
//        
//        2744
//        回到根控制文件创建大头针，用自定义初始化函数初始化大头针；
//        2745
//        MyAnnotion *myann=[[MyAnnotion alloc]initWithTitle:@"标题" subTitle:@"副标题" coordinate:coordinate];
//        2746
//        给地图添加大头针
//        2747
//        
//        2748
//        [map addAnnotation:myann];
//        2749
//        
//        2750
//        
//        2751
//        创建一个长压手势，在手势函数中
//        2752
//        UILongPressGestureRecognizer *press=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpress:)];
//        2753
//        给地图添加手势
//        2754
//        [map addGestureRecognizer:press];
//        2755
//        [map release];
//        2756
//    }
//    2757
//    
//    2758
//    
//    2759
//    长按触发的手势函数；
//    2760
//    -(void)longpress:(UILongPressGestureRecognizer *)press
//    2761
//    {
//        2762
//        为了防治一直按键不断的产生大头针 要对按键状态进行判断，只有第一次长按才添加大头针
//        2763
//        if (press.state==UIGestureRecognizerStateBegan) {
//            2764
//            CGPoint piont=[press  locationInView:self.view ];
//            2765
//            CLLocationCoordinate2D coordinate=[map convertPoint:piont toCoordinateFromView:map];
//            2766
//            MyAnnotion * annontion=[[MyAnnotion alloc]initWithTitle:@"title" subTitle:@"subtite" coordinate:coordinate];
//            2767
//            
//            2768
//            ／／为大头针出现时添加动作；
//            2769
//            [map addAnnotation:annontion];
//            2770
//        }
//        2771
//        
//        2772
//        
//        2773
//    }
//    2774
//    
//    2775
//    //这是地图的协议方法
//    2776
//    //自定义大头针
//    2777
//    -(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
//    2778
//    {
//        2779
//        //为了节省内存创建大头针队列，只生成能看见的大头针；
//        2780
//        MKPinAnnotationView *pinView=(MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"ID"];
//        2781
//        //判断是否是用户定义；为了防治把系统的定位标志也改成大头针样式,由于是定位，定位时刻进行，所以回不断的产生大头针，和我们自己定义的大头针没有了区分
//        2782
//        if ([annotation isKindOfClass:[mapView.userLocation class]]) {
//            2783
//            return nil;
//            2784
//        }
//        2785
//        if(pinView ==nil){
//            2786
//            ／／创建大头针使用我们定义加入地图的大头针；
//            2787
//            pinView=[[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"ID"]autorelease];
//            2788
//        }
//        2789
//        //展示标题
//        2790
//        pinView.canShowCallout=YES;
//        2791
//        //设置动画
//        2792
//        pinView.animatesDrop=YES;
//        2793
//        ／／设置针头颜色
//        2794
//        pinView.pinColor=MKPinAnnotationColorPurple;
//        2795
//        创建视图用于添加到大头针细节视图中
//        2796
//        UIView *leftview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
//        2797
//        leftview.backgroundColor=[UIColor greenColor];
//        2798
//        pinView.leftCalloutAccessoryView=leftview;
//        2799
//        //添加按钮用于添加到大头针视图细节的右面；
//        2800
//        UIButton *button=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//        2801
//        pinView.rightCalloutAccessoryView=button;
//        2802
//        return pinView;
//        2803
//    }
//    2804
//    
//    2805
//    
//    2806
//    ／／定位函数
//    2807
//    -(void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
//    2808
//    {
//        2809
//        把用户的位置属性设为yes来展示用户的位置；
//        2810
//        map.showsUserLocation=YES;
//        2811
//        设置显示比例
//        2812
//        MKCoordinateSpan span=MKCoordinateSpanMake(0.5, 0.5);
//        2813
//        创建原始位置属性，此时经纬可以用函数的参数来设置，当前所处的位置；
//        2814
//        MKCoordinateRegion region=MKCoordinateRegionMake(newLocation.coordinate, span);
//        2815
//        动画添加位置
//        2816
//        [map setRegion:region animated:YES];
//        2817
//        更新位置
//        2818
//        [localmanager startUpdatingLocation];
//        2819
//    }
//    2820
//    
//    2821
//    
//    2822
//    
//    2823
//    游戏开发
//    2824
//    cocos2d oc
//    2825
//    cocos2d-x( 中国人维护  不如cocos2d多) 2d-x c++
//    2826
//    cocos2d-android java
//    2827
//    cocos2d-html5
//    2828
//    cocos2d-flash
//    2829
//    cocos2d流程：和电影流程差不多
//    2830
//    游戏开始：
//    2831
//    1。初始化
//    2832
//libs:游戏引擎；
//    2833
//    加库：opencles.framework(计算机图形学)
//    2834
//    注：gpu：是数
//    2835
//    
//    2836
//    注意：选择白库时选最短得
//    2837
//    plist图片要和png图片名称相同
//    2838
//    注：在游戏当中一定要注意产生对象的释放；因为内容比较多，如不释放内存泄漏非常严重；
//    2839
//    游戏一：发射打击；
//    2840
//    1。加载所需文件：    openal.framework   ,openGLES.framework,quartacore.framework,audiotoolbox.faramework,avfoundation.framwork,libz.dylib;
//    2841
//    添加libs文件cocos2d包，再加上所需图片和音乐；
//    2842
//    2.游戏界面只有一个导演，一个舞台，每个界面相当于一个节目；界面切换靠的是导演指导哪个节目上场；每个节目上要添加层靠曾来展示内容；
//    2843
//    具体操作是：
//    2844
//    1.创建导演，并判断是否能运行最新的导演
//    2845
//    BOOL ret = [CCDirector setDirectorType:kCCDirectorTypeDisplayLink];
//    2846
//    ／／这是功能比较强大的导演；
//    2847
//    if (ret == FALSE) {
//        2848
//        [CCDirector setDirectorType:kCCDirectorTypeDefault];
//        2849
//        CCDirector *director = [CCDirector sharedDirector];
//        2850
//        ／／创建导演，他是个共享函数，程序始终只有一个导演；
//        2851
//        这个导演适于所有版本的系统；
//        2852
//        2.创建舞台
//        2853
//        CGRect rect = self.window.bounds;／／得到舞台的尺寸
//        2854
//        创建舞台view
//        2855
//        EAGLView *glView = [[EAGLView alloc] initWithFrame:rect]
//        2856
//        3. 导演让屏幕横屏
//        2857
//        [director setDeviceOrientation:kCCDeviceOrientationLandscapeLeft];
//        2858
//        // 设置屏幕为 风景
//        2859
//        // kCCDeviceOrientationLandscapeLeft
//        2860
//        // 竖屏  Portrait 肖像
//        2861
//        4. 关联导演和glview
//        2862
//        // 让导演知道哪里是舞台
//        2863
//        [director setOpenGLView:glView];
//        2864
//        5. 设置游戏刷新率
//        2865
//        // 刷新周期  60HZ
//        2866
//        // [director setAnimationInterval:1/60];
//        2867
//        [director setAnimationInterval:1/60.0f];
//        2868
//        6.把舞台添加到窗口
//        2869
//        [self.window addSubview:glView];
//        2870
//        [glView release];
//        2871
//        // glview计数器是多少  2
//        2872
//        7.运行第一个节目
//        2873
//        CCScene *s = [StartLayer scene];
//        2874
//        调用start layer的类函数用于切换节目  [StartLayer scene] 的类函数要些在StartLayer中方便使用
//        2875
//        [director runWithScene:s];
//        2876
//        让导演运行第一个节目；
//        2877
//        在运行一个节目时需要注意的点：
//        2878
//        1。创建切换节目的类函数；
//        2879
//        + (id) scene {
//            2880
//            CCScene *s = [CCScene node];
//            2881
//            CCLayer *l = [StartLayer node];
//            2882
//            [s addChild:l];
//            2883
//            return s;
//            2884
//        }
//        2885
//        node函数是继承node的 初始化函数是[[[self alloc] init] autorelease]；用这个函数比较简便；但是初始化时如果对象就以两个可以这样初始化；如果对象很多就不要这样初始化；因为自动释放时间不确定容易占用内存；
//        2886
//        2.初始化层；
//        2887
//        注：一开始加载的东西要放在初始化中；
//        2888
//        创建菜单
//        2889
//        CCMenuItemFont *startItem = [[CCMenuItemFont alloc] initFromString:@"开始游戏" target:self selector:@selector(beginGame)];
//        2890
//        CCMenuItemFont是文字菜单项；有图片菜单项,文本项等等
//        2891
//        点击菜单项都会出发事件；点击开始游戏菜单项就要出发新节目；在出发函数中要
//        2892
//        CCMenuItem *helpItem = [[CCMenuItemFont alloc] initFromString:@"帮助" target:self selector:@selector(helpGame)];
//        2893
//        // CCMenuItemFont创建一个菜单项
//        2894
//        // cocos2d
//        2895
//        CCMenu *menu = [CCMenu menuWithItems:startItem, helpItem, nil];
//        2896
//        创建菜单，同时加入菜单项；
//        2897
//        [menu alignItemsVertically];
//        2898
//        // menuitem竖直对齐
//        2899
//        // NSArray
//        2900
//        [self addChild:menu];
//        2901
//        // 把menu加入到self
//        2902
//        // addChild: 类似addSubview:
//        2903
//        
//        2904
//        点击菜单项都会出发事件；点击开始游戏菜单项就要出发新节目；在触发函数中要要切换节目
//        2905
//        2.创建新节目：
//        2906
//        CCScene *s = [LoadingLayer scene];／／这个函数同样是类函数，
//        2907
//        // 第2个 任何地方都是这样
//        2908
//        CCDirector *d = [CCDirector sharedDirector];获取导演；
//        2909
//        // s 1
//        2910
//        [d replaceScene:s];
//        2911
//        让新节目代替旧节目； 这个函数的好处是把旧节目释放；不再占用内存
//        2912
//        //    [s release];
//        2913
//        // 把当前剧场删掉  然后用新的剧场s
//        2914
//        // 不遵守规矩
//        2915
//        // 在LoadingLayer alloc 在StartLayer中release
//        2916
//        登陆节目：
//        2917
//        节目同样要些创建节目的类函数，和上面的写法一样
//        2918
//        登陆时显示的是一个进度条；通过扩大其中一个进度条的长度来模仿数据加载；
//        2919
//        初始化函数：
//        2920
//        在cocos2d中的精灵相当于ui中的图片
//        2921
//        CCSprite *redSprite = [[CCSprite alloc] initWithFile:@"progressbar1.png"];
//        2922
//        // 用图片progressbar1.png来创建一个精灵
//        2923
//        CCDirector *d = [CCDirector sharedDirector];
//        2924
//        CGSize winSize = [d winSize];
//        2925
//        // 取得屏幕当前的宽高
//        2926
//        设置锚点；锚点相当于图片的基准点；
//        2927
//        redSprite.anchorPoint = ccp(0, 0);
//        2928
//        CGSize redSpriteSize = [redSprite contentSize];
//        2929
//        // 取得精灵自己的宽高
//        2930
//        CGFloat x = (winSize.width-redSpriteSize.width)/2.0f;
//        2931
//        CGFloat y = (winSize.height-redSpriteSize.height)/2.0f;
//        2932
//        设置精灵的位置；
//        2933
//        redSprite.position = ccp(x, y);
//        2934
//        //        redSprite.position = ccp(winSize.width/2, winSize.height/2);
//        2935
//        // 指定它中心位置
//        2936
//        // 设置锚点在父视图中的坐标
//        2937
//        将精灵添加到图层；
//        2938
//        [self addChild:redSprite];
//        2939
//        [redSprite release];
//        2940
//        注意局部对象及时的销毁；
//        2941
//        yellowSprite = [[CCSprite alloc] initWithFile:@"progressbar2.png"];
//        2942
//        //        yellowSprite.position = ccp(winSize.width/2, winSize.height/2);
//        2943
//        yellowSprite.anchorPoint = ccp(0, 0);
//        2944
//        yellowSprite.position = ccp(x, y);
//        2945
//        ／／scale是缩放的意思；可以对整体缩放，也可以缩放x和y；
//        2946
//        yellowSprite.scaleX = 0.2f;
//        2947
//        yellowSprite.tag = 100;
//        2948
//        [self addChild:yellowSprite];
//        2949
//        //        [NSTimer scheduledTimerWithTimeInterval:<#(NSTimeInterval)#> target:<#(id)#> selector:<#(SEL)#> userInfo:<#(id)#> repeats:<#(BOOL)#>
//        2950
//        ／／图层也可以添加计时器；不用再创建timer；
//        2951
//        [self schedule:@selector(timer:) interval:0.5f];
//        2952
//        // 每隔0.5s来调用self timer:
//        2953
//        每隔0。5秒调用的函数；
//        2954
//        - (void) timer:(double)dt {
//            2955
//            //    CCSprite *yellowSprite = (CCSprite *)[self getChildByTag:100];
//            2956
//            // getChildByTag:100根据100tag来找ccnode
//            2957
//            // 如果有就返回 否则 nil
//            2958
//            // 取得s的在x上的放大比例 < 1 缩小
//            2959
//            CGFloat scalex = [yellowSprite scaleX];
//            2960
//            scalex += 0.1f;
//            2961
//            [yellowSprite setScaleX:scalex];
//            2962
//            if (scalex >= 1.0f) {
//                2963
//                // 取消定时器
//                2964
//                [self unschedule:@selector(timer:)];
//                2965
//                [[CCDirector sharedDirector] replaceScene:[GameLayer scene]];
//                2966
//                
//                2967
//            }
//            2968
//        }
//        2969
//        
//        2970
//        游戏界面
//        2971
//        游戏界面同样是通过类函数创建节目；在初始化函数种需要做的工作是加载背景图，和游戏者。创建随时间调用的函数；
//        2972
//        CCSprite *bgSprite = [[CCSprite alloc] initWithFile:@"bg.png"];
//        2973
//        bgSprite.anchorPoint = ccp(0, 0);
//        2974
//        bgSprite.position = ccp(0, 0);
//        2975
//        [self addChild:bgSprite];
//        2976
//        [bgSprite release];
//        2977
//        // 放一个人
//        2978
//        
//        2979
//        CCSprite *player = [[CCSprite alloc] initWithFile:@"Player.png"];
//        2980
//        CGSize playerSize = [player contentSize];
//        2981
//        CGSize winSize = [[CCDirector sharedDirector] winSize];
//        2982
//        player.position = ccp(playerSize.width/2.0f, winSize.height/2.0f);
//        2983
//        [self addChild:player];
//        2984
//        [player release];
//        2985
//        tagetarray=[[CCArray alloc]init];
//        2986
//        bulletarray=[[CCArray alloc]init];
//        2987
//        
//        2988
//        [self addTarget];
//        2989
//        [self schedule:@selector(targetTimer:) interval:1.0f];
//        2990
//        [self schedule:@selector(gameLogic)];
//        2991
//        // 如果不写多长时间调用就是每隔1/60.0f 秒调用
//        2992
//        // 缺省touch是关闭的
//        2993
//        self.isTouchEnabled = YES;
//        2994
//        发子弹需要触摸所以要让屏幕可触摸；
//        2995
//        创建打击目标调用的函数；
//        2996
//        -(void)addTarget
//        2997
//        { 创建精灵；
//            2998
//            CCSprite * taget=[[CCSprite alloc]initWithFile:@"Target.png"];
//            2999
//            将精灵添加到数组；用于测试是否被子弹打中；
//            3000
//            [tagetarray addObject:taget];
//            3001
//            
//            3002
//            CGSize winsize=[[CCDirector sharedDirector] winSize];
//            3003
//            CGSize tagetsize=[taget contentSize];
//            3004
//            通过随机数获设置精灵的随机高度；注：随机数很大通过取余来控制随机数的范围；
//            3005
//            CGFloat y= tagetsize.height/2.0f+ arc4random()%(int)(winsize.height-tagetsize.height);
//            3006
//            CGFloat x=winsize.width;
//            3007
//            taget.position=ccp(x,y);
//            3008
//            [self addChild:taget];
//            3009
//            [taget release];
//            3010
//            CGPoint dispoint=ccp(0, y);
//            3011
//            设置动作点，精灵会在设置的时间内从起点运动到目地点；
//            3012
//            CCMoveTo *move=[[CCMoveTo alloc]initWithDuration:2 position:dispoint];
//            3013
//            CGPoint destpoint2=ccp(300,0 );
//            3014
//            动作点可设置跳跃点
//            3015
//            CCJumpTo *move2=[[CCJumpTo alloc]initWithDuration:2 position:destpoint2  height:200 jumps:1];
//            3016
//            用来调用某个函数；一般是用来做善后工作；
//            3017
//            CCCallFuncN *finish= [[CCCallFuncN alloc]initWithTarget:self selector:@selector(finish:)]; 
//            3018
//            创建队列，调用者会按队列顺序执行；
//            3019
//            CCSequence *squence=[CCSequence actions:move,move2,finish, nil];
//            3020
//            让对象按队列运行；
//            3021
//            [taget runAction:squence];
//            3022
//            [move2 release];
//            3023
//            [move release];
//            3024
//            
//            3025
//        }
//        3026
//        触摸函数用于添加子弹；注意触摸函数的写法；函数touch后带es的和ui的触摸函数一样
//        3027
//        -(void)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//        3028
//        { 
//            3029
//            创建音乐引擎；
//            3030
//            [[SimpleAudioEngine sharedEngine] playEffect:@"pew-pew-lei.caf"];
//            3031
//            CCSprite *bulletsprite=[[CCSprite alloc]initWithFile:@"Bullet.png"];
//            3032
//            bulletsprite.tag=10;
//            3033
//            创建触摸对象
//            3034
//            UITouch *onetouch=[touches anyObject];
//            3035
//            获取触摸对象的位置；
//            3036
//            CGPoint touchpoint=[onetouch locationInView:onetouch.view ];
//            3037
//            ／／注意获取的触摸点时竖屏时的所以得把该点转换成游戏横屏时的触摸点；
//            3038
//            CGPoint glpoint=[[CCDirector sharedDirector]convertToGL:touchpoint];
//            3039
//            CGFloat y=[[CCDirector sharedDirector]winSize].height/2.0f;
//            3040
//            bulletsprite.position=ccp(20,y);
//            3041
//            [self addChild: bulletsprite];
//            3042
//            CCMoveTo * move=[[CCMoveTo alloc]initWithDuration:1 position:glpoint];
//            3043
//            int i=480/glpoint.x;
//            3044
//            CGPoint point=ccp(490, glpoint.y*i);
//            3045
//            
//            3046
//            //int time=sqrt(glpoint.x*glpoint.x+glpoint.y*glpoint.y)*sqrt((480-glpoint.x)*(480-glpoint.x)+(glpoint.y*i)*(glpoint.y*i));
//            3047
//            
//            3048
//            CCMoveTo *move2=[[CCMoveTo alloc]initWithDuration:1 position:point];
//            3049
//            CCCallFuncN *finish=[[CCCallFuncN alloc]initWithTarget:self selector:@selector(finish:)];
//            3050
//            把子弹添加到数组；用于判断是否打中目标；
//            3051
//            [bulletarray addObject:bulletsprite];
//            3052
//            CCSequence *sequence=[CCSequence actions:move,move2,finish, nil];
//            3053
//            [bulletsprite runAction:sequence];
//            3054
//            
//            3055
//            [bulletsprite release];
//            3056
//            [move release];
//            3057
//            //  [finish release];
//            3058
//            
//            3059
//        }
//        3060
//        判断是否大中目标的函数；用循环数组比较比较范围来获取；
//        3061
//        -(void)gamelogic
//        3062
//        {
//            3063
//            for (CCSprite* bullet in bulletarray) {
//                3064
//                // NSLog(@"%@",bulletarray);
//                3065
//                CGSize buletsize=[bullet  contentSize];
//                3066
//                for (CCSprite *taget in tagetarray) {
//                    3067
//                    CGSize tagetsize=[taget contentSize];
//                    3068
//                    float x1=buletsize.width;
//                    3069
//                    float x2=tagetsize.width;
//                    3070
//                    float max=x1*0.4f+x2*0.4f;
//                    3071
//                    CGFloat lon =ccpDistance(bullet.position,taget.position );
//                    3072
//                    通过比较接触范围来判断是否打中；
//                    3073
//                    if (lon<=max) {
//                        3074
//                        //停止动画函数；在这里没有什么作用；
//                        3075
//                        [taget stopAllActions];
//                        3076
//                        [bullet stopAllActions];
//                        3077
//                        调用释放函数；
//                        3078
//                        [self finish:taget];
//                        3079
//                        [self finish:bullet];
//                        3080
//                        
//                        3081
//                        return;
//                        3082
//                        
//                        3083
//                    }
//                    3084
//                }
//                3085
//                
//                3086
//            }
//            3087
//        }
//        3088
//        -(void)addTarget
//        3089
//        
//        3090
//        
//        3091
//        从屏幕上释放精灵；
//        3092
//        -(void)finish:(CCNode *)node
//        3093
//        { 由于数组中添加了对象，释放时也要从数组中去除；
//            3094
//            if (node.tag==10) {
//                3095
//                [bulletarray removeObject:node];
//                3096
//            }
//            3097
//            else
//                3098
//                [tagetarray removeObject:node];
//            3099
//            
//            3100
//            [node removeFromParentAndCleanup:YES];
//            3101
//            
//            3102
//        }
//        3103
//        做游戏地图
//        3104
//        要学习 ： tieldmap:地图编译器  
//        3105
//        opengl
//        3106
//        Box2D 物理引擎
//        3107
//        网络：http gel post1
//        3108
//        http   post2
//        3109
//        weibo分享 腾讯微博，uauth2 协议
//        3110
//        domain    协议：1.http：／／
//        3111
//        2.ftp：／／
//        3112
//        3.
//        3113
//        baidu.com是真正的域名； www.baidu.com是一台机器是二级域名
//        3114
//        参数间用&隔开，参数名＝参数值
//        3115
//        http：//www.baidu.com  是缺省的 http：//www.baidu.com  /index.html/
//        3116
//        网络访问模式
//        3117
//        客户端      发出请求                apache2      调用             访问程序
//        3118
//        要点：
//        3119
//        
//        3120
//        网络请求处理 nignx（大量连接时）， httplight（联接少的时候），apache2
//        3121
//        
//        3122
//        服务器默认路径是／library／web server／document ／ document 是放网页的文件夹
//        3123
//        读取这个目录下的iOS1时写法：http://localhost／iOS1
//        3124
//        XXXX.CGi 是服务器程序      cgi－executables 是放可执行程序的文件 在服务器访问中映射是cgi－bin 访问时写成http:／／localhost／cgi－bin／iOS
//        3125
//        post1真实名字是：application／x－www－form－urlencoded
//        3126
//        功能强大顺序；
//        3127
//        post2>post1>get
//        3128
//        他们都是上行协议；都是客户端传给服务器端的， 而服务器传给客户端的没有区分也叫响应；
//        3129
//        什么时get协议：
//        3130
//        在网址上写的直接回车能出来的是get协议 get 时传入到网上的东西.又可以定义为只有请求头没有请求体的请求，
//        3131
//        入网址是http://api.douban.com/cgi-bin？srlaction＝232
//        3132
//        发到网上的时 只有请求头： 
//        3133
//        get :  ／cgi-bin？srlaction＝232\r\n
//        3134
//        请求路径和内容
//        3135
//        host：api.douban.com\r\n
//        3136
//        请求机器
//        3137
//        \r\n     ：请求头的结束标志；
//        3138
//        post1 发送格式：
//        3139
//        请求头：
//        3140
//        post ／cgi－bin／get.cgi\r\n
//        3141
//        请求路径
//        3142
//    host:localhost\r\n
//        3143
//        请求的机器
//        3144
//        content-type：application/x-www-form-unlencoded\r\n
//        3145
//        请求协议：post1
//        3146
//        content－length ：78\r\n
//        3147
//        请求体长度
//        3148
//        r\n
//        3149
//        请求体：
//        3150
//        srclatitude＝40.02999&srclongitude=116.3466
//        3151
//        get 缺陷：1.网址不可太长<1024
//        3152
//        
//        3153
//        2.不能带密码；
//        3154
//        3.不能传文件
//        3155
//        post1特点:1.网址小于4g
//        3156
//        2.可一带密码；
//        3157
//        
//        3158
//        read（0,input ，lengthjl） ：0 指从apache2中读数据
//        3159
//        
//        3160
//        套接字：socket
//        3161
//        
//        3162
//        tcp：用在稳定的连接：可靠的，速度快
//        3163
//        用于：图片，录音，文字
//        3164
//        
//        3165
//        udp不可靠的网络连接；非常快，
//        3166
//        用于：视频，文件，文字
//        3167
//        
//        3168
//        
//        3169
//    tcp:网络传输；
//        3170
//        传输思想：
//        3171
//        1.服务器端：
//        3172
//        1.生成服务器并并设置监听接口
//        3173
//        2.在代理的确实接收到套接字函数中 要调用等待读取函数；这里的等待不是新建立的套接字等待而是让服务器底层新开一个线程等待传人数据；
//        3174
//        3.在代理的确实接收到数据函数中取得接收到的数据，同时要在建立等待接收数据，等待下一次传输；这时的tag还用先前的；因为tcp网络传输一次建立联系，后面就无须在建立联系；所以省去再和服务器建立联系这个环节；
//        3175
//        2.客户端：
//        3176
//        1.生成客户端套接字 ；
//        3177
//        2. 连接服务器，并设置网络接入入口
//        3178
//        3.调用代理的以服务器建立连接成功函数。在这里吧连接开关设置为已连连接
//        3179
//        4.将数据发送到服务器
//        3180
//        
//        3181
//        - (void) createServer {
//            3182
//            allClientSockets = [[NSMutableArray alloc] init];
//            3183
//            serverSocket = [[AsyncSocket alloc] initWithDelegate:self];
//            3184
//            [serverSocket acceptOnPort:0x1234 error:nil];
//            3185
//            // serverSocket在端口0x1234来等待
//            3186
//            // 也是异步的bind端口
//            3187
//            // serverSocket自动会在0x1234上等待有人来连接我
//            3188
//        }
//        3189
//        
//        3190
//        - (void) onSocket:(AsyncSocket *)sock didAcceptNewSocket:(AsyncSocket *)newSocket {
//            3191
//            // 只要有人来连接我 这个函数就会被调用
//            3192
//            // newSocket就是系统自动创建的 socket
//            3193
//            // 如果有10个人连接端口 0x1234那么这个函数就会执行10次
//            3194
//            // newSocket
//            3195
//            // newSocket是自动autorelease
//            3196
//            NSLog(@"new connection is coming new %@",newSocket);
//            3197
//            [allClientSockets addObject:newSocket];
//            3198
//            int index = [allClientSockets indexOfObject:newSocket];
//            3199
//            [newSocket readDataWithTimeout:-1 tag:index+100];
//            3200
//            // newSocket来告诉系统来接收到达newSocket的数据
//            3201
//            // -1 一直等待 100 表示
//            3202
//            // 异步读取数据
//            3203
//        }
//        3204
//        - (void) onSocket:(AsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag {
//            3205
//            
//            3206
//            int index = [allClientSockets indexOfObject:sock];
//            3207
//            NSString *s = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//            3208
//            recvMsgView.text = [NSString stringWithFormat:@"%@\n%@", recvMsgView.text, s];
//            3209
//            [s release];
//            3210
//            
//            3211
//            // 继续发起一个读的操作
//            3212
//            [sock readDataWithTimeout:-1 tag:tag];
//            3213
//        }
//        3214
//        
//        3215
//        
//        3216
//#pragma mark -
//        3217
//#pragma mark Client Part
//        3218
//        - (void) createClient {
//            3219
//            clientSocket = [[AsyncSocket alloc] initWithDelegate:self];
//            3220
//            isConnected = NO;
//            3221
//        }
//        3222
//        - (void) connectToHost:(NSString *)ip {
//            3223
//            static int index;
//            3224
//            if (index++)
//                3225
//                return;
//            3226
//            // 异步连接ip:0x1234的机器
//            3227
//            [clientSocket connectToHost:ip onPort:0x1234 withTimeout:10 error:nil];
//            3228
//            // 还不知道到底有没有连接成功
//            3229
//        }
//        3230
//        - (void) onSocket:(AsyncSocket *)sock didConnectToHost:(NSString *)host port:(UInt16)port {
//            3231
//            NSLog(@"已经连接上了 %@:%d", host, port);
//            3232
//            isConnected = YES;
//            3233
//        }
//        3234
//        - (void) sendMessage:(id)arg {
//            3235
//            NSString *ip = ipField.text;
//            3236
//            // 192.168.1.23 api.douban.com
//            3237
//            NSString *msg = msgField.text;
//            3238
//            NSData *msgData = [msg dataUsingEncoding:NSUTF8StringEncoding];
//            3239
//            /*  1. 文字 2. 图片  3 图片+文字 4 文字+语音
//             3240
//             //  文字 1 图片 2 语音 3
//             3241
//             type: 1
//             3242
//             subtype: 1
//             3243
//             len :
//             3244
//             文字内容
//             3245
//             
//             3246
//             
//             3247
//             type:2
//             3248
//             subtype:2
//             3249
//             len: 10240
//             3250
//             图片内容
//             3251
//             
//             3252
//             type:3
//             3253
//             subtype:1
//             3254
//             len:100
//             3255
//             文字内容
//             3256
//             subtype:2
//             3257
//             len:200000
//             3258
//             图片内容
//             3259
//             
//             3260
//             type:4
//             3261
//             subtype:3
//             3262
//             len:1000000
//             3263
//             语音内容
//             3264
//             subtype:1
//             3265
//             文字
//             3266
//             
//             3267
//             */
//            3268
//            // 端口
//            3269
//            // 第一次发数据就来调用 连接
//            3270
//            // 第二次之后就不用连接了
//            3271
//            [self connectToHost:ip];
//            3272
//            
//            3273
//            if(isConnected == YES) {
//                3274
//                [clientSocket writeData:msgData withTimeout:10 tag:111];
//                3275
//                // 给clientsocket发送数据 msgData,
//                3276
//            } else {
//                3277
//                
//                3278
//            }
//            3279
//        }
//        3280
//        - (void) onSocket:(AsyncSocket *)sock didWriteDataWithTag:(long)tag {
//            3281
//            // 一旦发送成功 该函数就会得到调用
//            3282
//            if (tag == 111) {
//                3283
//                
//                3284
//            }
//            3285
//        }
//        3286
//        
//        3287
//        udp 网络传输
//        3288
//        基本思想：
//        3289
//        1。接收端端：
//        3290
//        1.创建接收端套接字；
//        3291
//        2.绑定网络端口
//        3292
//        3.等待接收数据；
//        3293
//        4.调用代理接收到数据的函数；取出数据，并开始调用等待函数等待下次数据传输；
//        3294
//        2. 发送端
//        3295
//        1.创建发送端套接字
//        3296
//        2.得到接收端的ip和接收数据的网络端口；将数据发送到该地址；
//        3297
//        3.通过是否发送成功函数通过判断返回的tag值来判断是否发送成功；
//        3298
//        
//        3299
//        - (void)viewDidLoad
//        3300
//        {
//            3301
//            [super viewDidLoad];
//            3302
//            
//            3303
//            ipField = [[UITextField alloc] initWithFrame:CGRectMake(50, 10, 200, 30)];
//            3304
//            ipField.borderStyle = UITextBorderStyleRoundedRect;
//            3305
//            [self.view addSubview:ipField];
//            3306
//            
//            3307
//            msgField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 150, 30)];
//            3308
//            msgField.borderStyle = UITextBorderStyleRoundedRect;
//            3309
//            [self.view addSubview:msgField];
//            3310
//            
//            3311
//            UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//            3312
//            b.frame = CGRectMake(220, 50, 80, 30);
//            3313
//            [b setTitle:@"发送" forState:UIControlStateNormal];
//            3314
//            [b addTarget:self action:@selector(sendMessage:) forControlEvents:UIControlEventTouchUpInside];
//            3315
//            [self.view addSubview:b];
//            3316
//            
//            3317
//            recvMsgView = [[UITextView alloc] initWithFrame:CGRectMake(10, 100, 300, 250)];
//            3318
//            recvMsgView.backgroundColor = [UIColor groupTableViewBackgroundColor];
//            3319
//            [recvMsgView setEditable:NO];
//            3320
//            [self.view addSubview:recvMsgView];
//            3321
//            
//            3322
//            // 1. 创建接收socket
//            3323
//            recvMsgSocket = [[AsyncUdpSocket alloc] initWithDelegate:self];
//            3324
//            // 2. 接收的对象要负责绑定bind到本机的一个port
//            3325
//            [recvMsgSocket bindToPort:0x1234 error:nil];
//            3326
//            // recvMsgSocket只能接收 本机的端口为0x1234的数据包
//            3327
//            // 192.168.1.11:0x1234
//            3328
//            // 什么时候绑定成功
//            3329
//            // 3. 接收数据
//            3330
//            [recvMsgSocket receiveWithTimeout:-1 tag:200];
//            3331
//            //-1 表示让让服务器无限等待，去接受数据；如是正数就表示让服务器等待多长时间去接收数据；
//            3332
//            // 这个函数不会blocked
//            3333
//            //  这个函数不会亲自阻塞
//            3334
//            // 操作系统来等 10
//            3335
//            // 告诉系统接收一次
//            3336
//            // 4. ? 数据什么时候来了
//            3337
//            
//            3338
//            recv2 = [[AsyncUdpSocket alloc] initWithDelegate:self];
//            3339
//            [recv2 bindToPort:0x1235 error:nil];
//            3340
//            //    [recv2 receiveWithTimeout:-1 tag:201];
//            3341
//            
//            3342
//            // 1. 创建发送套接字 只是创建一次
//            3343
//            senderUdpSocket = [[AsyncUdpSocket alloc] initWithDelegate:self];
//            3344
//            // [senderUdpSocket bindToPort:9876 error:nil];
//            3345
//            // 发送一方绑定端口是没有意义的
//            3346
//            // [senderUdpSocket bindToPort:0x7654 error:nil];
//            3347
//            //对于senderUdpSocket如果没有调用bindToPort那么系统会自动给你选择一个没用的随机的端口
//            3348
//        }
//        3349
//        - (BOOL) onUdpSocket:(AsyncUdpSocket *)sock didReceiveData:(NSData *)data withTag:(long)tag fromHost:(NSString *)host port:(UInt16)port {
//            3350
//            if (tag == 200) {
//                3351
//                // 证明端口0x1234上有数据来了
//                3352
//                // data对方传过来的数据
//                3353
//                // host表示是谁传给我的 port不是0x1234是发送方的端口
//                3354
//                // host:port是对方的端口和ip
//                3355
//                // tag就是200
//                3356
//                NSString *s = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//                3357
//                NSString *s2 = [NSString stringWithFormat:@"%@:%d %@", host, port, s];
//                3358
//                [s release];
//                3359
//                recvMsgView.text = [NSString stringWithFormat:@"%@\n%@", recvMsgView.text, s2];
//                3360
//                [recvMsgSocket receiveWithTimeout:-1 tag:200];
//                3361
//            }
//            3362
//            return YES;
//            3363
//        }
//        3364
//        
//        3365
//        
//        3366
//        
//        3367
//        - (void) sendMessage:(id)arg {
//            3368
//            NSString *ip = ipField.text;
//            3369
//            // 192.168.1.23 api.douban.com
//            3370
//            NSString *msg = msgField.text;
//            3371
//            NSData *msgData = [msg dataUsingEncoding:NSUTF8StringEncoding];
//            3372
//            // 端口
//            3373
//            short port = 0x1234;
//            3374
//            // 给ip:port发送消息msg
//            3375
//            [senderUdpSocket sendData:msgData toHost:ip port:port withTimeout:10 tag:100];
//            3376
//            // 给ip地址的机器上的一个端口port 发送消息msgData
//            3377
//            // 10 timeout 超时 失败
//            3378
//            // tag 100 表示本次数据包
//            3379
//            // sendData:该函数不会blocked
//            3380
//            // 该函数不会负责真正的发送
//            3381
//            // 只会告诉系统我要发送 tag=100的数据包msgData
//            3382
//            NSLog(@"aa");
//            3383
//        }
//        3384
//        
//        3385
//        - (void) onUdpSocket:(AsyncUdpSocket *)sock didSendDataWithTag:(long)tag {
//            3386
//            // 名字为tag的数据包已经发送完成
//            3387
//            if (tag == 100) {
//                3388
//                NSLog(@"数据包100已经发送成功");
//                3389
//            }
//            3390
//        }
//        3391
//        
//        3392
//        广播：又叫消息，观察者，通知
//        3393
//    ARC:内存自动管理 不须要release；
//        3394
//        2。不用［super dealloc］
//        3395
//        3.不能用aotorelease；
//        3396
//        单例：一个对象，一个全局对象；
//        3397
//        1.写一个单例
//        3398
//        2.单例什么时候释放；不用释放，因为时全局变量
//        3399
//        3。如何避免实例化 ：将init alloc 函数返回空；
//        3400
//        单例命名规则：currentxxxxx， sharedxxxx， aplication xxx
//        3401
//        
//        3402
//        
//        3403
//    arrayWithContentOfFile:    数组解析文件的方法
//        3404
//        
//        3405
//        //创建三个分栏控制器
//        3406
//        UITabBarItem *barItem1=[[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"关于.png"] tag:0];
//        3407
//        self.vc01.tabBarItem=barItem1;
//        3408
//        //消息图标
//        3409
//        self.vc01.tabBarItem.badgeValue=@"3";//badgeValue是一个属性，指的是消息的提示
//        3410
//        self.vc02.tabBarItem.badgeValue=nil;//这样就显示为空
//        3411
//        [barItem1 release];
//        3412
//        
//        3413
//        
//        3414
//        
//        3415
//        //系统UITableBarItem的图标
//        3416
//        UITabBarItem *barItem2=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:1];
//        3417
//        self.vc02.tabBarItem=barItem2;
//        3418
//        [barItem2 release];
//        3419
//        
//        3420
//        
//        3421
//        //系统UITableBarItem的图标
//        3422
//        
//        3423
//        UITabBarItem *barItem3=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:3];
//        3424
//        self.vc03.tabBarItem=barItem3;
//        3425
//        [barItem3 release];
//        3426
//        
//        3427
//        
//        3428
//        //将三个视图控制器装入到数组中 
//        3429
//        //  NSArray *arrayVC=[NSArray arrayWithObjects:_vc01,_vc02,_vc03 nil];
//        3430
//        
//        3431
//        NSArray *arrayVC=[NSArray arrayWithObjects:self.vc01,self.vc02,self.vc03, nil];
//        3432
//        //将控制器赋给tabBarControl
//        3433
//        
//        3434
//        UITabBarController *tabBar=[[UITabBarController alloc]init];
//        3435
//        //接收数组viewControllers
//        3436
//        tabBar.viewControllers=arrayVC;
//        3437
//        
//        3438
//        
//        3439
//        //将tabBar设置根视图控制器
//        3440
//        
//        3441
//        self.window.rootViewController=tabBar;
//        3442
//        [arrayVC release];
//        3443
//        
//        3444
//        只要是添加的视图控制器 或是什么管理器的 话 都是加载 根视图控制器rootViewController上面 
//        3445
//        加上UIlable  UIButton  view等等都是直接添加到window或是view上面的 addSubview方法 
//        3446
//        //添加图片视图，视图用addSubview方法来添加  特别是视图
//        3447
//        [sv addSubview:imageView];
//        3448
//        
//        3449
//        
//        3450
//        
//        3451
//        //在视图上面添加图片的一般方法；
//        3452
//        for (int i=0; i<9; i++) {
//            3453
//            //获取每一个图片的 文件名  并且转化成字符串
//            3454
//            NSString *strName=[NSString stringWithFormat:@"17_%d.jpg",i+1];
//            3455
//            //加载图片
//            3456
//            UIImage *image=[UIImage imageNamed:strName];
//            3457
//            UIImageView *imageView=[[UIImageView alloc]initWithImage:image];
//            3458
//            imageView.frame=CGRectMake(20+ 97*(i%3), 20+130*(i/3), 85,120);
//            3459
//            //add方法是添加视图的
//            3460
//            [self.view addSubview:imageView];
//            3461
//            [imageView release];
//            3462
//        }
//        3463
//        
//        3464
//        
//        3465
//        //把图片添加到数组里面去  addObject
//        3466
//        NSString *sirName=[NSString stringWithFormat:@"%d.png",i+1];
//        3467
//        UIImage *image=[UIImage imageNamed:sirName];
//        3468
//        [imageArray addObject:image ];
//        3469
//        
//        3470
//        //随机数    后面是数组元素的个数
//        3471
//        int random=arc4random()%[imageArray count];
//        3472
//        
//        3473
//        
//        3474
//        随机数一般都是需要取模的  相当于是确定生成随机数的范围  不至于太大的数
//        3475
//        取模规律  8  取模生成的是0，1，2，3，4，5，6，7；
//        3476
//        
//        3477
//        
//        3478
//        往按钮上面添加图片很重要的方法   使得每一个图片都是可以点的 实际实际上点的都是button
//        3479
//        [btn setImage:image forState:UIControlStateNormal];
//        3480
//        //设置按钮的大小  相当于是确定了图片的大小   和 图片视图是差不多的
//        3481
//        btn.frame=CGRectMake(40*i , 40*j, 40, 40);
//        3482
//        
//        3483
//        
//        3484
//        objectAtIndex 只适用于集合（数组）。可根据索引获取对象。如：
//        3485
//        NSArray *array=[NSArray arrayWithObjects:@"zhangsan",@"lisi",@"wangwu",nil];
//        3486
//        NSLog("%@",[array objectAtIndex:0]);
//        3487
//        这时输出的值是'zhangsan' .可以看出objectAtIndex 消息是从下标0开始。
//        3488
//        
//        3489
//        
//        3490
//        objectAtIndex从0开始 即第一个元素的位置是0
//        3491
//        objectAtIndex 一般在数组操作中用到。但是这个数组必须是你能控制的，就是说你必须清楚地知道第几个元素是什么内容。
//        3492
//        如果你不清楚你需要的元素在什么位置，请用tag标注。
//        3493
//        
//        3494
//        
//        3495
//        //两个宝石 相同的点了之后 就都隐藏了  不同  的点了没反应    这是函数的实现
//        3496
//        -(void)pressButton:(UIButton *)btn
//        3497
//        {
//            3498
//            //只被执行一次，以后都不执行了，记录上次的值；如果没有，每次都会执行，避免出现空指针直接nil
//            3499
//            
//            3500
//            static UIButton * lastBtn=nil;
//            3501
//            if (lastBtn==nil) {
//                3502
//                lastBtn=btn;
//                3503
//                lastBtn.enabled=NO;//点击  是否可以点击
//                3504
//            }
//            3505
//            else
//                3506
//            {
//                3507
//                if (lastBtn.tag==btn.tag) {
//                    3508
//                    lastBtn.hidden=YES;
//                    3509
//                    btn.hidden=YES;
//                    3510
//                    lastBtn=nil;
//                    3511
//                }
//                3512
//                else
//                    3513
//                {
//                    3514
//                    lastBtn.enabled=YES;
//                    3515
//                    lastBtn=nil;
//                    3516
//                }
//                3517
//            }
//            3518
//            
//            3519
//            
//            3520
//        }
//        3521
//        
//        3522
//        //横着滚动的情况  特别要注意滚动条的偏移量 横着的画最好与图片的宽度一致，竖着的画最好与图片的宽度一致
//        3523
//        //初始化
//        3524
//        UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(30, 30, 260, 400)];
//        3525
//        //设置滚动条最后移动的背景颜色
//        3526
//        sv.backgroundColor=[UIColor redColor];
//        3527
//        for (int i=0; i<3; i++) {
//            3528
//            UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"17_%d.jpg",i+1]]];
//            3529
//            imageView.frame=CGRectMake(0+i*260, 0, 260,400);
//            3530
//            
//            3531
//            //添加图片视图，视图用addSubview的方法来添加,把图片添加到滚动视图上面
//            3532
//            [sv addSubview:imageView];
//            3533
//            [imageView release];
//            3534
//            
//            3535
//        }
//        3536
//        
//        3537
//        //设置显示内容尺寸
//        3538
//        sv.contentSize=CGSizeMake(260*3, 400);
//        3539
//        //    设置按照页码滚动
//        3540
//        sv.pagingEnabled=YES;
//        3541
//        //  设置边缘弹动效果,拉到极端的时候可以弹起来
//        3542
//        sv.bounces=YES;
//        3543
//        //改变滚动条偏移量
//        3544
//        sv.contentOffset=CGPointMake(260, 0);//最好设置为CGPointMake(0, 0);上下  横着都不会首影响
//        3545
//        //再把滚动视图添加到  总试图上面
//        3546
//        [self.view addSubview:sv ];
//        3547
//        
//        3548
//        
//        3549
//        //竖着着滚动的情况  特别要注意滚动条的偏移量 横着的画最好与图片的宽度一致，竖着的画最好与图片的宽度一致
//        3550
//        //初始化
//        3551
//        UIScrollView *sv=[[UIScrollView alloc]initWithFrame:CGRectMake(30, 30, 260, 400)];
//        3552
//        //设置滚动条最后移动的背景颜色
//        3553
//        sv.backgroundColor=[UIColor redColor];
//        3554
//        for (int i=0; i<3; i++) {
//            3555
//            UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"17_%d.jpg",i+1]]];
//            3556
//            imageView.frame=CGRectMake(0, 0+i*400, 260,400);
//            3557
//            
//            3558
//            //添加图片视图，视图用addSubview的方法来添加,把图片添加到滚动视图上面
//            3559
//            [sv addSubview:imageView];
//            3560
//            [imageView release];
//            3561
//            
//            3562
//        }
//        3563
//        
//        3564
//        //设置显示内容尺寸
//        3565
//        sv.contentSize=CGSizeMake(0, 400*3);
//        3566
//        //    设置按照页码滚动
//        3567
//        sv.pagingEnabled=YES;
//        3568
//        //  设置边缘弹动效果,拉到极端的时候可以弹起来
//        3569
//        sv.bounces=YES;
//        3570
//        //改变滚动条偏移量
//        3571
//        sv.contentOffset=CGPointMake(0, 400);//最好设置为CGPointMake(0, 0);上下  横着都不会首影响
//        3572
//        //再把滚动视图添加到  总试图上面
//        3573
//        [self.view addSubview:sv ];
//        3574
//        
//        3575
//        
//        3576
//        //销毁对象，程序结束的时候调用,销毁控制器
//        3577
//        - (void)dealloc
//        3578
//        {
//            3579
//            //棋盘销毁，首先把棋子都拿掉
//            3580
//            self.vc01=nil;
//            3581
//            self.vc02=nil;
//            3582
//            self.vc03=nil;
//            3583
//            self.vc04=nil;
//            3584
//            self.vc05=nil;
//            3585
//            self.vc06=nil;
//            3586
//            [_window release];
//            3587
//            [super dealloc];
//            3588
//        }
//        3589
//        
//        3590
//        self.navigationItem.leftBarButtonItem=barBtnLef;//导航左按钮
//        3591
//        self.navigationItem.rightBarButtonItem=barBrnRight;//导航右按钮
//        3592
//        
//        3593
//        //创建左导航按钮
//        3594
//        UIButton *btnLeft=[UIButton buttonWithType:UIButtonTypeCustom];
//        3595
//        btnLeft.frame = CGRectMake(0, 0, 33, 30);
//        3596
//        [btnLeft addTarget:self action:@selector(pressLeftNav) forControlEvents:UIControlEventTouchUpInside];
//        3597
//        UIImage *imageLeft=[UIImage imageNamed:@"main_left_nav"];
//        3598
//        [btnLeft setImage:imageLeft forState:UIControlStateNormal];
//        3599
//        
//        3600
//        UIBarButtonItem *barBtnLef=[[UIBarButtonItem alloc]
//                                    3601
//                                    initWithCustomView:btnLeft];
//        3602
//        self.navigationItem.leftBarButtonItem=barBtnLef;
//        3603
//        
//        3604
//        
//        3605
//        //创建右导航按钮，button也有frame  起始位置都是默认的 只需要宽和高就可以了，不一定是添加在window上面，可以添加在视图上面
//        3606
//        UIButton *btnRight = [UIButton buttonWithType:UIButtonTypeCustom];
//        3607
//        btnRight.frame = CGRectMake(0, 0, 48, 29);
//        3608
//        [btnRight addTarget:self action:@selector(pressRightNav) forControlEvents:UIControlEventTouchUpInside];
//        3609
//        UIImage *imageRight = [UIImage imageNamed:@"main_right_nav"];
//        3610
//        [btnRight setImage:imageRight forState:UIControlStateNormal];
//        3611
//        //导航栏 有自己特定的按钮的
//        3612
//        UIBarButtonItem *barBrnRight=[[UIBarButtonItem alloc]initWithCustomView:btnRight];
//        3613
//        self.navigationItem.rightBarButtonItem=barBrnRight;
//        3614
//        
//        3615
//        
//        3616
//        navigationItem指的是导航的各种属性   可以引用导航按钮  标题视图 等等
//        3617
//        
//        3618
//        
//        3619
//        //导航栏的标题视图titleView
//        3620
//        UIImageView *ivLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo_title"]];
//        3621
//        ivLogo.frame = CGRectMake(0, 0, 60, 35);
//        3622
//        self.navigationItem.titleView = ivLogo;//标题视图
//        3623
//        [ivLogo release];
//        3624
//        
//        3625
//        
//        3626
//        
//        3627
//        UIView *bgView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//        3628
//        UIImageView *bgImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//        3629
//        [bgView addSubview:bgImageView];
//        3630
//        
//        3631
//        imageview.UserInteractionEnabled=YES;//是否能和用户交互；
//        3632
//        
//        3633
//        
//        3634
//        //特别注意的一点是  button上面同时有标题与  小图片的时候  默认是图片在前面 ，字在后面 
//        3635
//        NSArray *arrayTopButtonTitle = [NSArray arrayWithObjects:@"照片", @"状态", @"报到", nil];
//        3636
//        NSArray *arrayTopBtnImages = [NSArray arrayWithObjects:@"rr_pub_takephoto", @"rr_pub_status", @"rr_pub_checkin", nil];
//        3637
//        for (int i=0; i<arrayTopButtonTitle.count; i++) {
//            3638
//            UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//            3639
//            btn.frame = CGRectMake(5+105*i, 2, 100, 30);
//            3640
//            [btn setTitle:[arrayTopButtonTitle objectAtIndex:i] forState:UIControlStateNormal];
//            3641
//            //把图片放在按钮上面
//            3642
//            [btn setImage:[UIImage imageNamed:[arrayTopBtnImages objectAtIndex:i]] forState:UIControlStateNormal];
//            3643
//            [topButtonImageView addSubview:btn];
//            3644
//        }
//        3645
//        
//        3646
//        
//        3647
//        经常想做的效果，主界面设置一个好看的图片  让后再添加button  等其他一些东西
//        3648
//        
//        3649
//        //设置主界面的背景 用图片视图作为背景
//        3650
//        UIView *bgView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
//        3651
//        
//        3652
//        UIImageView *bgImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"rr_main_background"]];
//        3653
//        bgImageView.frame=CGRectMake(0, 0, 320, 460);
//        3654
//        //把图片视图添加到视图 实际上就是把图片添加到视图
//        3655
//        [bgView addSubview:bgImageView];
//        3656
//        
//        3657
//        
//        3658
//        //是否可以与用户交互  不能交互就不能够点击按钮
//        3659
//        topButtonImageView.userInteractionEnabled=YES;
//        3660
//        
//        3661
//        [bgImageView addSubview:topButtonImageView];
//        3662
//        bgImageView.userInteractionEnabled=YES;   
//        3663
//        注意的是：最外层view 设置的button不用设置与用户交互 就是可以点击的   而当视图上面还有小视图的时候  而且小视图上面还有button的时候，这个时候必须设置与用户交互YES
//        3664
//        topButtonImageView.userInteractionEnabled=YES;
//        3665
//        
//        3666
//        否则虽然有button  但是点不动  呵呵；
//        3667
//        
//        3668
//        
//        3669
//        
//        3670
//        
//        3671
//        //张贝贝经典改变颜色的程序
//        3672
//        
//        3673
//        -(void)viewDidLoad
//        3674
//        {
//            3675
//            [super viewDidLoad];
//            3676
//            self.navigationItem.prompt=@"移动滑块后将改变画面颜色";
//            3677
//            
//            3678
//            slider =[[UISlider alloc]init];
//            3679
//            slider.frame=self.navigationController.navigationBar.bounds;
//            3680
//            slider.minimumValue=0.0;
//            3681
//            slider.maximumValue=1.0;
//            3682
//            slider.value=0.0;
//            3683
//            [slider addTarget:self action:@selector(sliderDidChange) forControlEvents:UIControlEventTouchUpInside];
//            3684
//            self.navigationItem.titleView=slider;
//            3685
//            
//            3686
//            label =[[UILabel alloc]init];
//            3687
//            label.frame=CGRectInset(self.view.bounds, 10, 10);
//            3688
//            //表示自动拉伸对齐
//            3689
//            label.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
//            3690
//            label.backgroundColor=[UIColor blackColor];
//            3691
//            [self.view addSubview:label];
//            3692
//            
//            3693
//        }
//        3694
//        
//        3695
//        -(void)viewWillAppear:(BOOL)animated
//        3696
//        {
//            3697
//            //  [super viewWillAppear:<#animated#>];
//            3698
//            [self.navigationController setNavigationBarHidden:NO animated:YES];
//            3699
//            [self.navigationController setToolbarHidden:YES animated:YES];
//            3700
//            [self.navigationItem setHidesBackButton:YES animated:NO];
//            3701
//            
//            3702
//        }
//        3703
//        -(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//        3704
//        {
//            3705
//            [self.navigationItem setHidesBackButton:NO animated:YES];
//            3706
//        }
//        3707
//        
//        3708
//        
//        3709
//        //关于颜色的调配
//        3710
//        -(void)sliderDidChange
//        3711
//        {
//            3712
//            UIColor *color =[[UIColor alloc]initWithRed:(1-slider.value) green:slider.value blue:(1-slider.value)+0.4 alpha:1.0];
//            3713
//            label.backgroundColor=color;
//            3714
//        }
//        3715
//        
//        3716
//        
//        3717
//        
//        3718
//        //static的用法  交替进行
//        3719
//        -(void)changColor
//        3720
//        {
//            3721
//            //保留每一次的值  然后在开始  没有static就每次都是针对 黑色的将不会出现
//            3722
//            //布尔类型的变量  定义了一个变量
//            3723
//            static bool isChange=true;
//            3724
//            if (isChange) {
//                3725
//                self.view.backgroundColor=[UIColor redColor];
//                3726
//            }
//            3727
//            else
//                3728
//            {
//                3729
//                self.view.backgroundColor=[UIColor blackColor];
//                3730
//            }
//            3731
//            //此时必须还要赋过来  然后才可以 红色与黑色交替变换
//            3732
//            isChange=!isChange;
//            3733
//        }
//        3734
//        
//        3735
//        //通知中心  把方法通过一个控制器传递给另外一个控制器  
//        3736
//        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeBackColor) name:@"CHANGE_COLOR" object:nil];
//        3737
//        两个控制器都必须有同样的通知  都是同一个方法的实现才是可以的  颜色是可以不一样的
//        3738
//        
//        3739
//        //滚动条下面的脚视图
//        3740
//        _tableView.tableFooterView = titleView;
//        3741
//        
//        3742
//        
//        3743
//        /*
//         3744
//         UITableViewCellAccessoryDetailDisclosureButton为蓝色小园按钮，**可点击**
//         3745
//         */
//        3746
//        
//        3747
//        
//        3748
//        上百个视图的画 大项目  用Single View Application来做做设计  很号的理清自己的思路  视图太多了 不好弄  刚开始尽量不要和代码连接在一起！  拖空间
//        3749
//        
//        3750
//        工作的前两年 还是手写代码
//        3751
//        
//        3752
//        
//        3753
//        //%2d表示显示两位数字 %02d表示只有各位的时候  十位是0
//        3754
//        NSString *str = [NSString stringWithFormat:@"%02d:%02d",random1,random2];
//        3755
//        
//        3756
//        
//        3757
//        //查找的第一响应事件
//        3758
//        - (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
//        3759
//        {
//            3760
//            //创建UIControl一层界面
//            3761
//            _searchBg = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, 320, 240)];
//            3762
//            [_searchBg addTarget:self action:@selector(backgroundTap:) forControlEvents:UIControlEventTouchUpInside];
//            3763
//            [self.view addSubview:_searchBg];
//            3764
//            [_searchBg release];
//            3765
//            return YES;
//            3766
//        }
//        3767
//        - (void)backgroundTap:(id)sender {
//            3768
//            UISearchBar *bar = (UISearchBar *)[self.view viewWithTag:110];
//            3769
//            [bar resignFirstResponder];
//            3770
//            if (_searchBg) {
//                3771
//                [_searchBg removeFromSuperview];
//                3772
//            }
//            3773
//        }
//        3774
//        
//        3775
//        
//        3776
//        //一般这种写法是表示自动拉伸对齐
//        3777
//        mTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
//        3778
//        
//        3779
//        
//        3780
//        
//        3781
//        在应用UIBUtton的时候我们有时需要同时设置图片和文字，下面代码仅供参考：
//        3782
//        
//        3783
//        UIButton *_backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        3784
//        [_backButton setFrame:CGRectMake(12, 8, 64, 28)];
//        3785
//        [_backButton setTitle:@"返回" forState:UIControlStateNormal];        //设置button在没有选中的时候显示的字体
//        3786
//        _backButton.titleLabel.font = [UIFont systemFontOfSize:14.0f];         //设置button显示字体的大小
//        3787
//        [_backButton setBackgroundImage:[UIImage imageNamed:@"backButton.png"] forState:UIControlStateNormal];    //设置button背景显示图片
//        3788
//        [self.view addSubview:_backButton];
//        3789
//        
//        3790
//        
//        3791
//        出了上面的操作意外，我们还可以同时设置button在选中（按下之后）以及正常状态下（没有选中）显示文字和图片的不同，
//        3792
//        
//        3793
//        UIButton *_backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        3794
//        [_backButton setFrame:CGRectMake(12, 8, 64, 28)];
//        3795
//        [_backButton setTitle:@"返回" forState:UIControlStateNormal];
//        3796
//        [_backButton setTitle:@"Down" forState:UIControlStateHighlighted];
//        3797
//        [_backButton setBackgroundColor:[UIColor clearColor]];
//        3798
//        [_backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//        3799
//        _backButton.titleLabel.font = [UIFont systemFontOfSize:14.0f];
//        3800
//        [_backButton setBackgroundImage:[UIImage imageNamed:@"backButton.png"] forState:UIControlStateNormal];
//        3801
//        [_backButton setBackgroundImage:[UIImage imageNamed:@"DownButton.png"] forState:UIControlStateNormal];
//        3802
//        [_toolBar addSubview:_backButton];
//        3803
//        
//        3804
//        
//        3805
//        
//        3806
//        
//        3807
//        //自定义导航条添加按钮，并且添加事件
//        3808
//        UIBarButtonItem *btn=[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleBordered  target:self action:@selector(btns:)];
//        3809
//        //放在左边
//        3810
//        self.navigationItem.leftBarButtonItem=btn;
//        3811
//        
//        3812
//        
//        3813
//        不管有多少行 都是可以用来代替的。。。。
//        3814
//        
//        3815
//        //一般试图器之间发生的关系  都是用一个button  点击事件  然后用导航推出下一个视图
//        3816
//        -(void)nextPage:(id)sender
//        3817
//        {
//            3818
//            //创建下一个视图控制器的对象
//            3819
//            thirdViewController *third = [[thirdViewController alloc]init];
//            3820
//            //然后用导航来推出
//            3821
//            [self.navigationController pushViewController:third animated:YES];
//            3822
//            [third release];
//            3823
//        }
//        3824
//        
//        3825
//        
//        3826
//        
//        3827
//        同步声明一次 就应该析构一次
//        3828
//        @property (strong, nonatomic) UISplitViewController *splitViewController;
//        3829
//        @synthesize splitViewController = _splitViewController;
//        3830
//        
//        3831
//        
//        3832
//        这是必须的 因为声明一次  就会出现一个strong  计数器加上1  就需要释放一次
//        3833
//        - (void)dealloc
//        3834
//        {
//            3835
//            
//            3836
//            
//            3837
//            [_splitViewController release];
//            3838
//            [super dealloc];
//            3839
//        }
//        3840
//        
//        3841
//        
//        3842
//        
//        3843
//        //需要牢记的内存管理知识
//        3844
//        @property (nonatomic, copy) NSString *descrition;//字符串的声明，里面最好是用copy
//        3845
//        //同步的标准写法  加上下划线
//        3846
//        @synthesize descrition = _descrition;
//        3847
//        
//        3848
//        //立马还需要调用dealoc函数 析构  自己手动写出    高手的指点
//        3849
//        - (void)dealloc
//        3850
//        {
//            3851
//            self.descrition = nil;
//            3852
//            
//            3853
//            [super dealloc];
//            3854
//        }
//        3855
//        
//        3856
//        
//        3857
//        另外需要注意的是
//        3858
//        @property (assign, nonatomic) NSInteger i;//assign是弱引用，计数器不用加1
//        3859
//        而且整形的变量是不需要分配内存空间的  没有指针   所以不能给强引用 ，此时不能用到strong的
//        3860
//        
//        3861
//        
//        3862
//        
//        3863
//        //本类中声明成员变量的方法  只是为了本类来使用的 其他的类是用不着的
//        3864
//        @implementation Vc02
//        3865
//        {
//            3866
//            //只允许本类来使用的成员变量
//            3867
//            NSDictionary *_dict;
//            3868
//        }
//        3869
//        
//        3870
//        
//        3871
//        //成员变量只要是指针变量  就需要调用dealloc来释放    顺序是先release  然后再放空    声明的全局变量需要   self.descrition = nil;  直接放空 就可以了  需要特别的牢记
//        3872
//        
//        3873
//        - (void)dealloc
//        3874
//        {
//            3875
//            //成员变量是先释放 然后在放空
//            3876
//            [_dict release];
//            3877
//            _dict = nil;
//            3878
//            
//            3879
//            
//            3880
//            [super dealloc];
//            3881
//        }
//        3882
//        
//        3883
//        
//        3884
//        //设置内容尺寸，能够显示内容的尺寸  根据所有图片的大小来确定的
//        3885
//        sv03.contentSize=CGSizeMake(0, 1000);
//        3886
//        //    设置按照页码滚动
//        3887
//        sv03.pagingEnabled=YES;
//        3888
//        //  设置边缘弹动效果,拉到极端的时候可以弹起来
//        3889
//        sv03.bounces=YES;
//        3890
//        //改变滚动条偏移量，从第三张图片开始    ，从顶部第一张图片开始的，就是0与0，这个偏移量挺重要的
//        3891
//        sv03.contentOffset=CGPointMake(0, 320);
//        3892
//        //再把滚动视图添加到  总试图上面
//        3893
//        [self.view addSubview:sv03 ];
//        3894
//        [sv03 release];
//        3895
//        
//        3896
//        
//        3897
//        
//        3898
//        //添加右边的图片
//        3899
//        UIImageView *imageView01=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"衣装"]];
//        3900
//        imageView01.frame=CGRectMake(170, 0, 150, 75);
//        3901
//        imageView01.userInteractionEnabled =YES;
//        3902
//        
//        3903
//        UIButton *button01=[UIButton buttonWithType:UIButtonTypeCustom];
//        3904
//        button01.frame=CGRectMake(0, 0, 150, 75);
//        3905
//        [button01 addTarget:self action:@selector(press01) forControlEvents:UIControlEventTouchUpInside];
//        3906
//        //加一个nil  表示透明的button   与下面一句话的意思差不多
//        3907
//        //[button setImage:nil forState:UIControlStateNormal];
//        3908
//        [button01 setBackgroundColor:[UIColor clearColor]];
//        3909
//        [imageView01 addSubview:button01];
//        3910
//        
//        3911
//        [self.view addSubview:imageView01];
//        3912
//        [imageView01 release];
//        3913
//        
//        3914
//        
//        3915
//        
//        3916
//        UIAlertView  是不用添加到试图上面 的
//        3917
//        
//        3918
//        但是UIActionSheet  是必须要添加到试图上面
//        3919
//        
//        3920
//        
//        3921
//        
//        3922
//        全局的成员变量 需要用dealloc函数来释放的  记住；
//        3923
//        @property(strong,nonatomic)UILabel *lab01;
//        3924
//        @synthesize lab01;
//        3925
//        
//        3926
//        self.lab01=[[[UILable alloc]init]autorelease];//这里用到了点语法，所以计数器是加1的；后面需要一个自动释放池才可以，程序快结束的时候来调用，用点语法才是正常调用了@property与@synthesize   要不然只是声明。。。。全局的成员变量还要用到dealloc来析构一次才可以
//        3927
//        
//        3928
//        一般不建议这样用  ，最好还是用[lab01  release];
//        3929
//        
//        3930
//        
//        3931
//        //UIActionSheet是最外层的  所以一般不能直接添加到试图view上面  记住！！
//        3932
//        UIImageView *imageview = (UIImageView *)[self.view viewWithTag:33333];
//        3933
//        actionsheet=[[UIActionSheet alloc]initWithTitle:nil delegate:self  cancelButtonTitle:@"取消" destructiveButtonTitle:@"分享到新浪微博" otherButtonTitles:@"分享到腾讯微博", nil];
//        3934
//        actionsheet.delegate=self;
//        3935
//        [actionsheet showInView:imageview];
//        3936
//        
//        3937
//        [actionsheet release];
//        3938
//        
//        3939
//        
//        3940
//        
//        3941
//        
//        3942
//        //滚动试图在下面 点哪张 加上哪张
//        3943
//        -(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
//        3944
//        {
//            3945
//            UITouch *touch=[touches anyObject];
//            3946
//            //鼠标点击的位置 确定下来
//            3947
//            CGPoint pt=[touch locationInView:scroll02];
//            3948
//            //点击一次的时候
//            3949
//            if (touch.tapCount==1) {
//                3950
//                for (int i=0; i<18; i++) {
//                    3951
//                    //根据tag  找到那个图片视图
//                    3952
//                    UIImageView *image=(UIImageView *)[scroll02 viewWithTag:i+1];
//                    3953
//                    //设置与用户交互
//                    3954
//                    image.userInteractionEnabled=YES;
//                    3955
//                    //
//                    3956
//                    // int tag=image.tag;
//                    3957
//                    scroll02.userInteractionEnabled=YES;
//                    3958
//                    //判断是否点击到了图片
//                    3959
//                    if (CGRectContainsPoint(image.frame, pt)) {
//                        3960
//                        //点到了哪张  就把图片的文件名赋给他
//                        3961
//                        imageName=[NSString stringWithFormat:@"17_%d.jpg",image.tag];
//                        3962
//                        
//                        3963
//                        UIImage *image=[UIImage imageNamed:imageName];
//                        3964
//                        UIImageView *imageView=[[UIImageView alloc]initWithImage:image];
//                        3965
//                        imageView.frame=CGRectMake(0, 0, 320, 190);
//                        3966
//                        [self.view addSubview:imageView];
//                        3967
//                        [imageView release];
//                        3968
//                        
//                        3969
//                    }
//                    3970
//                    
//                    3971
//                }
//                3972
//            }
//            3973
//            
//            3974
//        }
//        3975
//        
//        3976
//        UITouch 
//        3977
//        
//        3978
//        处理用户响应事件，需要重载那三个触摸的方法，开始，触摸到，末尾，
//        3979
//        
//        3980
//        
//        3981
//        
//        3982
//        
//        3983
//        
//        3984
//        
//        3985
//        
//        3986
//        
//        3987
//        
//        3988
//        
//        3989
//        
//        3990
//        
//        3991
//        //用下载的数据 实例化  xml解析器
//        3992
//        GDataXMLDocument *doc=[[GDataXMLDocument alloc]initWithData:downloadData
//                               3993
//                                                            options:0 error:nil];
//        3994
//        //解析器 创建成功 （下载的数据  是合法的xml文件）
//        3995
//        if (doc) {
//            3996
//            
//            3997
//            //从解析器中用xpath  语法   查找  我要找的节点   返回值不管怎么样 都是数组类型
//            3998
//            NSArray *usersArray=[doc nodesForXPath:@"//user" error:nil];
//            3999
//            
//            4000
//            
//            4001
//            
//            4002
//            
//            4003
//            //xml文档中  的所有的  节点 都是   GDataXMLElement类的  实例（对象）
//            4004
//            for (GDataXMLDocument *element in usersArray) {
//                4005
//                // [element childAtIndex: ];//返回的第几个子节点
//                4006
//                //            [element childCount];
//                4007
//                //返回element  节点的子节点  为数组
//                4008
//                
//                4009
//                //[element children];
//                4010
//                //            [element attributeForName:@""];   获得element  节点的指定名称  的属性 节点  
//                4011
//                //获得element节点的所以的属性节点
//                4012
//                //            [element attribute];
//                4013
//                
//                4014
//                //实例化  模型类  对象
//                4015
//                UserItem *item=[[[UserItem alloc]init] autorelease];
//                4016
//                //从当前节点中查找 指定名称的子节点  elementsForName  所有的节点 都是element
//                4017
//                //            NSArray *subArray=[element elementsForName:@"uid"];
//                4018
//                //            //uid节点
//                4019
//                //           
//                4020
//                //            GDataXMLElement *uidElement=[subArray lastObject];
//                4021
//                //           
//                4022
//                //            //获取节点的 文本信息
//                4023
//                //            item.uid=[uidElement  stringValue];
//                4024
//                item.uid=[self elementString:element name:@"uid"];
//                4025
//                item.username=[self elementString:element name:@"username"];
//                4026
//                item.realname=[self elementString:element name:@"realname"];
//                4027
//                item.headimage=[NSString stringWithFormat:@"http://192.168.88.8/sns%@",[self elementString:element name:@"headimage"]] ;
//                4028
//                
//                4029
//                
//                4030
//                [dataArray addObject:item];
//                4031
//            }
//            4032
//            
//            4033
//            isLoading=NO;
//            4034
//            [self.tableView reloadData];
//            4035
//        }
//        4036
//        
//        4037
//        
//        4038
//        
//        4039
//        
//        4040
//        
//        4041
//        
//        4042
//        高亮情况下的button的实现方式（相当于设置两张图片，一张是为默认准备的，一张是高亮准备的）
//        4043
//        
//        4044
//        //默认的情况是出现一张图片
//        4045
//        UIButton * rightbtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        4046
//        [rightbtn setImage:[UIImage imageNamed:@"NextMenuButton.png"] forState:UIControlStateNormal];
//        4047
//        //高亮的时候是出现另外一张图片
//        4048
//        [rightbtn setImage:[UIImage imageNamed:@"NextMenuButtonSelected.png"] forState:UIControlStateHighlighted];
//        4049
//        rightbtn.frame = CGRectMake(200, 0, 40, 40);
//        4050
//        [rightbtn addTarget:self action:@selector(pressrightbtn) forControlEvents:UIControlEventTouchUpInside];
//        4051
//        [navbar addSubview:leftbtn];
//        4052
//        [navbar addSubview:rightbtn];
//        4053
//        
//        4054
//        
//        4055
//        自定义导航栏以及导航栏上面的 按钮   的基本方法
//        4056
//        
//        4057
//        //自己定义导航栏
//        4058
//        UINavigationBar * navbar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
//        4059
//        //导航栏设置背景图片
//        4060
//        [navbar setBackgroundImage:[UIImage imageNamed:@"NavigatorBarBg"] forBarMetrics:UIBarMetricsDefault];
//        4061
//        
//        4062
//        //创建这个对象很重要的
//        4063
//        UINavigationItem * item =[[UINavigationItem alloc] init];
//        4064
//        
//        4065
//        
//        4066
//        //导航栏上面的返回按钮
//        4067
//        UIBarButtonItem * btn1 = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(pressbtn1)];
//        4068
//        btn1.tintColor = [UIColor yellowColor];
//        4069
//        item.leftBarButtonItem = btn1;
//        4070
//        [btn1 release];
//        4071
//        
//        4072
//        
//        4073
//        //没有这句话 回来的时候就推不过去的
//        4074
//        [navbar pushNavigationItem:item animated:YES];
//        4075
//        [item release];
//        4076
//        [self.view addSubview:navbar];
//        4077
//        [navbar release];
//        4078
//        
//        4079
//        
//        4080
//        
//        4081
//        //这么重要的函数老师居然没有讲   我靠！！
//        4082
//        //此函数  如果是  return YES则就是四个方向都是支持的  竖着，倒着，左横，右横；  但系统默认只是正着的状态
//        4083
//        
//        4084
//        - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//        4085
//        {
//            4086
//            // Return YES for supported orientations
//            4087
//            return (interfaceOrientation == UIInterfaceOrientationPortrait);
//            4088
//            //    return YES;
//            4089
//        }
//        

