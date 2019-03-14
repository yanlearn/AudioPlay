//
//  ViewController.m
//  AudioPlayUse
//
//  Created by xy on 2019/3/14.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()

@property (nonatomic, strong)AVAudioPlayer *audioPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)begin:(id)sender {
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"music" withExtension:@"mp3"];
    self.audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    self.audioPlayer.volume = 0.5;
    [self.audioPlayer prepareToPlay];
    [self.audioPlayer play];
}
- (IBAction)end:(id)sender {
    
    if (self.audioPlayer.isPlaying == YES) {
        [self.audioPlayer stop];
    }
}


@end
