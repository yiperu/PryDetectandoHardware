//
//  ViewController.m
//  PryDetectandoHardware
//
//  Created by Henry Antonio Ambicho Trujillo on 7/24/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDetectCamara:(id)sender {
    
    BOOL cameraAvailable =      [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
    BOOL frontCameraAvailable = [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerCameraDeviceFront];
    
    if (cameraAvailable) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Camera"
                                                        message:@"Camara Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Camera"
                                                        message:@"Camara NOT Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    
    if (frontCameraAvailable) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Camera"
                                                        message:@"Front Camera Available"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Camera"
                                                        message:@"Front Camera NOT Available"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        
        [alert show];
    }
}

- (IBAction)btnDetectandoMagnetometro:(id)sender {
    BOOL magnetometerAvailable = [CLLocationManager headingAvailable];
    if (magnetometerAvailable) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Magnetometer"
                                                        message:@"Magnetometer Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Magnetometer"
                                                        message:@"Magnetometer NOT Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
    
}

- (IBAction)btnDetectandoAudio:(id)sender {
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    BOOL audioAvailable = audioSession.inputIsAvailable;
    
    if (audioAvailable) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Audio"
                                                        message:@"Audio Available"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Audio"
                                                        message:@"Audio NOT Available"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
    
    
}

- (IBAction)btnVideoCapture:(id)sender {
    // Verificando Soporte de Video
    if ([self isVideoCameraAvailable]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Video"
                                                        message:@"Soporte de Video Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Video"
                                                        message:@"Soporte de Video NOT Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
    
    
}

- (BOOL) isVideoCameraAvailable
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    NSArray *sourceTypes = [UIImagePickerController availableMediaTypesForSourceType:picker.sourceType];
    
    if (![sourceTypes containsObject:(NSString *)kUTTypeMovie]){
        return NO;
    }
    return YES;
}

- (BOOL) isGyroscopeAvailable
{
#ifdef __IPHONE_4_0
    CMMotionManager *motionManager = [[CMMotionManager alloc] init];
    BOOL gyroscopeAvailable = motionManager.gyroAvailable;
    return gyroscopeAvailable;
#else
    return NO;
#endif
}

- (IBAction)btnDetectandoGiroscopio:(id)sender {
    
    if ([self isGyroscopeAvailable]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Gyroscope"
                                                        message:@"Gyroscope Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Gyroscope"
                                                        message:@"Gyroscope NOT Disponible"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        [alert show];
    }
}
    
@end
