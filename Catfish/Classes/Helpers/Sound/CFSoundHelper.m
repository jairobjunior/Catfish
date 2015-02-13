//
//  CFSoundHelper.m
//  Catfish
//
//  Created by Jairo Junior on 2/13/15.
//  Copyright (c) 2015 Sook. All rights reserved.
//

#import "CFSoundHelper.h"
#import <AVFoundation/AVFoundation.h>

@implementation CFSoundHelper

+ (void)ignoreMuteSwitch
{
    NSError *error = nil;
    BOOL success = [[AVAudioSession sharedInstance]
                    setCategory:AVAudioSessionCategoryPlayback
                    error:&error];
    if (!success) {
        NSLog(@"TODO: Handle error here, as appropriate");
    }
}

@end
