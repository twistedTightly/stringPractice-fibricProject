
//
//  SPCreateStudentViewController.h
//  stringPractice
//
//  Created by Learning Technology Lab on 2/20/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SPStudent.h"

// code format copied from stackoverflow.com/questions/5244830/using-a-delegate-to-pass-data-back-up-the-navigation-stack

@protocol SPCreateStudentViewControllerDelegate;

@interface SPCreateStudentViewController : UIViewController {
    id<SPCreateStudentViewControllerDelegate> delegate;
    
    SPStudent* currentStudent;
}

@property (nonatomic, assign) id<SPCreateStudentViewControllerDelegate> delegate;
@property (nonatomic, retain) SPStudent* currentStudent;

@end


@protocol SPCreateStudentViewControllerDelegate

- (void)SPCreateStudentViewControllerDidFinish:(SPCreateStudentViewController*)SPCreateStudentViewController;

@end