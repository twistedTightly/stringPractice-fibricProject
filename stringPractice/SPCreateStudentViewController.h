
//
//  SPCreateStudentViewController.h
//  stringPractice
//
//  Created by Learning Technology Lab on 2/20/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//
//  http://alexefish.com/post/15966868557/understanding-and-creating-delegates-in-objective-c
//  Above link used as guideline for setting up delegate relationship between this VC and SPHomeVC

#import <UIKit/UIKit.h>
#import "SPStudent.h"

//@class SPCreateStudentViewController;
@protocol saveStudentDelegate;

@interface SPCreateStudentViewController : UIViewController

@property (nonatomic, weak) id <saveStudentDelegate> delegate;


@end

@protocol saveStudentDelegate

- (void) addStudentToArray: (SPStudent *) sender;

@end