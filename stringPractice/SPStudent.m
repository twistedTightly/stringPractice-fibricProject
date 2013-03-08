//
//  SPStudent.m
//  stringPractice
//
//  Created by Learning Technology Lab on 2/22/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPStudent.h"

@interface SPStudent ()

@property ( strong, nonatomic ) NSString *firstName;
@property ( strong, nonatomic ) NSString *lastName;
@property ( strong, nonatomic ) NSString *className;

@end

@implementation SPStudent

// I thought that that synthesizing created getters/setters...why do I need them implemented below, too?
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;
@synthesize className = _className;
 
/*
- (void) setFirstName: (NSString *) firstNameInput {
    self.firstName = firstNameInput;
}

- (void) setLastName: (NSString *) lastNameInput {
    self.lastName = lastNameInput;
}

- (void) setClassName: (NSString *) classNameInput {
    self.className = classNameInput;
}
*/

- (NSString *) getClassName {
    return self.className;
}

- (NSString *) getStudentFirstName {
    return self.firstName;
}

- (NSString *) getStudentLastName {
    return self.lastName;
}

@end