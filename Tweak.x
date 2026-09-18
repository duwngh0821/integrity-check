#import <UIKit/UIKit.h>

%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)),
                   dispatch_get_main_queue(), ^{
        UIWindow *w = nil;
        for (UIWindow *win in UIApplication.sharedApplication.windows)
            if (win.isKeyWindow) { w = win; break; }
        UIAlertController *a = [UIAlertController
            alertControllerWithTitle:@"Test"
            message:@"integrity test"
            preferredStyle:UIAlertControllerStyleAlert];
        [a addAction:[UIAlertAction actionWithTitle:@"OK"
            style:UIAlertActionStyleDefault handler:nil]];
        [w.rootViewController presentViewController:a animated:YES completion:nil];
    });
}
