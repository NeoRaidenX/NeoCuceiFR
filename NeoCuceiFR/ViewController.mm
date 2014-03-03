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
    CvHaarClassifierCascade *haarCascade = (CvHaarClassifierCascade *)cvLoad([resourcePath UTF8String],0,0,0);
    //This can load Haar detectors just by giving the file name. In this case it's working with frontfaceAltTree
    inputString = [[NSMutableString alloc]init];
    outputString = [NSString alloc];
    
    
}

#pragma mark - Protocol CvVideoCameraDelegate

#ifdef __cplusplus
-(void)processImage:(Mat &)image{
    Mat image_copy, equalizedImg;

    //Mat create a matrix with the numerical values for each of the points of the image.
    
    cvtColor(image, image_copy, CV_BGRA2GRAY);
    // This function converts an input image from one color space to another. In case of transformation to-from RGB color space, the order of the channels should be specified explicity (RGB or BGR).
    /*image - input
     CV_BGRA2BGR - transformation within BGRA space
     image_copy - output image
     */
    //equalizeHist(image_copy, equalizedImg);
    //cvtColor(equalizedImg, image, CV_BGR2BGRA);
    
    
    
}
#endif

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //Accesing device Cam
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionFront;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset352x288;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 30;
    self.videoCamera.grayscaleMode = NO;
    //endAccessing
    
}

- (IBAction)actionStart:(id)sender {
    [self.videoCamera start];
    
}
@end
