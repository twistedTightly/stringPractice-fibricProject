//
//  SPDataStorage.m
//  stringPractice
//
//  Created by Learning Technology Lab on 3/8/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPDataStorage.h"
#import "SPHomeViewController.h"
#import "SPStudent.h"

@interface SPDataStorage()

@property (strong, nonatomic) SPStudent* editedStudent;

@end


@implementation SPDataStorage

@synthesize editedStudent;

// COPIED from stackoverflow answer
- (void)SPCreateStudentViewControllerDidFinish:(SPCreateStudentViewController *)SPCreateStudentViewController {
    NSLog(@"Returning object");
    editedStudent = [[SPStudent alloc] init];
    
    editedStudent = SPCreateStudentViewController.currentStudent;
    //studentPropertyDisplay.text = [editedStudent getStudentFirstName];
}

@end
