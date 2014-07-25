//
//  ViewController.h
//  PryDetectandoHardware
//
//  Created by Henry Antonio Ambicho Trujillo on 7/24/14.
//  Copyright (c) 2014 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnDetectandoCamara;

- (IBAction)btnDetectCamara:(id)sender;


- (IBAction)btnDetectandoMagnetometro:(id)sender;



@end
