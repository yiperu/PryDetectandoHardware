//
//  ViewController.h
//  PryDetectandoHardware
//
//  Created by Henry Antonio Ambicho Trujillo on 7/24/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <AVFoundation/AVFoundation.h>
#import <MobileCoreServices/UTCoreTypes.h>
#import <CoreMotion/CoreMotion.h>


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnDetectandoCamara;

- (IBAction)btnDetectCamara:(id)sender;


- (IBAction)btnDetectandoMagnetometro:(id)sender;

- (IBAction)btnDetectandoAudio:(id)sender;


- (IBAction)btnVideoCapture:(id)sender;
// Metodo que vera si mi media esta disponible
- (BOOL) isVideoCameraAvailable;

- (IBAction)btnDetectandoGiroscopio:(id)sender;
// Metodo que vera si giroscopio esta disponible
- (BOOL) isGyroscopeAvailable;

@end
