//
//  ViewController.m
//  NeoCuceiFR
//
//  Created by Neo Raiden X on 26/02/14.
//  Copyright (c) 2014 Neo Raiden X. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //test repository
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.delegate = self;
    NSString *resourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:[NSString stringWithUTF8String:"haarcascade_frontalface_alt_tree.xml"]];
    
    
}

#pragma mark - Protocol CvVideoCameraDelegate

#ifdef __cplusplus
-(void)processImage:(cv::Mat &)image{
    Mat image_copy;
    //Mat create a matrix with the numerical values for each of the points of the image.
    
    cvtColor(image, image_copy, CV_BGRA2GRAY);
    // This function converts an input image from one color space to another. In case of transformation to-from RGB color space, the order of the channels should be specified explicity (RGB or BGR).
    /*image - input
     CV_BGRA2BGR - transformation within BGRA space
     image_copy - output image
     */
    
}
#endif

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    self.videoCamera.grayscaleMode = NO;
    
}

- (IBAction)actionStart:(id)sender {
    [self.videoCamera start];
    
}
@end
