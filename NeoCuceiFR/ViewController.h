//
//  ViewController.h
//  NeoCuceiFR
//
//  Created by Neo Raiden X on 26/02/14.
//  Copyright (c) 2014 Neo Raiden X. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <opencv2/highgui/cap_ios.h>

using namespace cv;

@interface ViewController : UIViewController<CvVideoCameraDelegate>{
    CvVideoCamera *videoCamera;
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UIButton *button;
}
- (IBAction)actionStart:(id)sender;

@property (nonatomic, retain) CvVideoCamera *videoCamera;

@end
