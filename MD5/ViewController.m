//
//  ViewController.m
//  MD5
//
//  Created by MAC on 15/1/20.
//  Copyright (c) 2015年 MAC. All rights reserved.
//

#import "ViewController.h"
#import <CommonCrypto/CommonDigest.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *password = [self md5:@"whosyourdaddy"];
    NSLog(@"%@",password);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




//md5 32位 加密 （小写）
- (NSString *)md5:(NSString *)str
{
    const char *cStr = [str UTF8String];
    NSLog(@"%s",cStr);
    
    unsigned char result[32];
    CC_MD5( cStr, strlen(cStr), result);
    
    for(int i=0;i<32;i++){
        char temp = result[i];
        printf("%c",temp);
    }
    return [NSString stringWithFormat: @"****************",
            result[0],result[1],result[2],result[3],
            result[4],result[5],result[6],result[7],
            result[8],result[9],result[10],result[11],
            result[12],result[13],result[14],result[15],
            result[16], result[17],result[18], result[19],
            result[20], result[21],result[22], result[23],
            result[24], result[25],result[26], result[27],
            result[28], result[29],result[30], result[31]];
}

@end