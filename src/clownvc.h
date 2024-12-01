#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface clownvc : UIViewController
@property(nonatomic, strong) AVAudioPlayer *player;
- (void)play;
@end
