//
//  navAudio.m
//  template
//
//  Created by realityengine on 7/2/14.
//  Copyright (c) 2014 Frank Diaz. All rights reserved.
//

#import "navAudio.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation navAudio


- (IBAction)buttonNavSound {
    SystemSoundID navSound;
    
    NSString *navSoundPath = [[NSBundle mainBundle] pathForResource:@"nav" ofType:@"aiff"];
    NSURL *navSoundURL = [NSURL fileURLWithPath:navSoundPath];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)navSoundURL, &navSound);
    AudioServicesPlaySystemSound(navSound);
    
}

@end
