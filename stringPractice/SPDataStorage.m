//
//  SPDataStorage.m
//  stringPractice
//
//  Created by Learning Technology Lab on 3/8/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPDataStorage.h"

@interface SPDataStorage()

@property (strong, nonatomic) NSMutableArray* rubrics;
@property (strong, nonatomic) NSMutableArray* students;

@end

@implementation SPDataStorage

// COPIED from stackoverflow answer
- (void)SPCreateStudentViewControllerDidFinish:(SPCreateStudentViewController *)SPCreateStudentViewController {
    NSLog(@"Returning object");
    editedStudent = SPCreateStudentViewController.currentStudent;
    studentPropertyDisplay.text = [editedStudent getStudentFirstName];
}

@end
