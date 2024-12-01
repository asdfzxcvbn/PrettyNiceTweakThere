#import "clownvc.h"
#import "data.h"

@implementation clownvc
+ (instancetype)new {
    clownvc *vc = [super new];
    [vc loadView];

    NSData *aud = [[NSData alloc] initWithBase64EncodedString:AUDIO_B64 options:NSDataBase64DecodingIgnoreUnknownCharacters];
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithData:aud error:nil];
    player.numberOfLoops = -1;
    vc.player = player;

    return vc;
}

- (void)loadView {
    NSData *trollData = [[NSData alloc] initWithBase64EncodedString:IMAGE_B64 options:NSDataBase64DecodingIgnoreUnknownCharacters];

    UIImageView *view = [[UIImageView alloc] initWithImage:[UIImage imageWithData:trollData]];
    view.frame = view.bounds;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.view = view;
}

- (void)play {
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    [self.player prepareToPlay];
    [self.player play];
}
@end
