//
//  ViewController.m
//  test
//
//  Created by Anthony Figueroa on 8/17/15.
//  Copyright (c) 2015 Anthony Figueroa. All rights reserved.
//

#import "ViewController.h"
#import "FFmpegWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FFmpegWrapper *wrapper = [[FFmpegWrapper alloc] init];
    NSDictionary *opts = @{
                        @"ss": @"00:00:08",
                        @"t": @"00:00:18",
                        @"async": @"1",
                        kFFmpegInputFormatKey: @"mp4"
                        };
    
    NSString *fileName = [NSString stringWithFormat:@"%@_%@", [[NSProcessInfo processInfo] globallyUniqueString], @"movie.mp4"];
    NSString *fileURL = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    
    [wrapper convertInputPath:@"http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_50mb.mp4 " outputPath:fileURL options:opts progressBlock:^(NSUInteger bytesRead, uint64_t totalBytesRead, uint64_t totalBytesExpectedToRead) {
        
        NSLog(@"Here");
    } completionBlock:^(BOOL success, NSError *error) {
        NSLog(@"Here");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
