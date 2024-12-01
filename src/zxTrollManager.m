#import "zxTrollManager.h"
#import "clownvc.h"
#import "data.h"

@implementation zxTrollManager
+ (void)start {
    UIAlertController *controller =
        [UIAlertController alertControllerWithTitle:ALERT_TITLE
                                            message:ALERT_DESCRIPTION
                                     preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *action =
        [UIAlertAction actionWithTitle:BUTTON_TEXT
                                 style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action) {
                                   [self startPlaying];
                               }];

    [controller addAction:action];
    [[self window].rootViewController presentViewController:controller
                                                   animated:YES
                                                 completion:nil];
}

+ (void)startPlaying {
    clownvc *vc = [clownvc new];
    [[self window] setRootViewController:vc];
    [vc play];
}

+ (UIWindow *)window {
    return UIApplication.sharedApplication.windows.firstObject;
}
@end