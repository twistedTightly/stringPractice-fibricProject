//
//  SPStudent.h
//  stringPractice
//
//  Created by Learning Technology Lab on 2/22/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//
//  SPStudent objects are used to save the data input by the user in SPCreateStudentVC and displayed in the table view in SPHomeVC
//      NOTE: Data members are public so the view controllers can access them easily (other option- make data members private and override setters/getters to be public)

#import <Foundation/Foundation.h>

@interface SPStudent : NSObject

@property (nonatomic, strong) NSString* firstName;
@property (nonatomic, strong) NSString* lastName;
@property (nonatomic, strong) NSString* className;

@end
