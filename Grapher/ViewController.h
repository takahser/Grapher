//
//  ViewController.h
//  Grapher
//
//  Created by S Takahashi on 03.09.15.
//  Copyright (c) 2015 S Takahashi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {

    // in order to access the slider, a reference variable to this slider is required (UISlider)
    IBOutlet UISlider *slider;
    
    // UILabel reference variable (display slide value on label)
    IBOutlet UILabel *msgLabel;
}

// define an action to be performed then user changes value of slider
- (IBAction)slideChanged;

@end

