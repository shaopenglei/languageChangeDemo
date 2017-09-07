//
//  ViewController.m
//  languageChangeDemo
//
//  Created by 邵朋磊 on 2017/8/31.
//  Copyright © 2017年 邵朋磊. All rights reserved.
//

#import "ViewController.h"

#define Localizable(language,key) [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:language ofType:@"lproj"]] localizedStringForKey:key value:nil table:@"Localizable"];
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *EnglishLabel;
@property (weak, nonatomic) IBOutlet UILabel *chaineseLable;
@property (weak, nonatomic) IBOutlet UILabel *indonesian;
@property(strong,nonatomic) NSString *lan; //用来保存选择的语言

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)englishButton:(id)sender {
    self.EnglishLabel.text = Localizable(@"en",@"showText");
}
- (IBAction)chineseButton:(id)sender {

    self.chaineseLable.text = Localizable(@"zh-Hans",@"showText");
}
- (IBAction)indonesianButton:(id)sender {

    self.indonesian.text = NSLocalizedString(@"showText", nil);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
