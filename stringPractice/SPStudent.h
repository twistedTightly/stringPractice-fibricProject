//
//  SPStudent.h
//  stringPractice
//
//  Created by Learning Technology Lab on 2/22/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPStudent : NSObject

@property ( strong, nonatomic ) NSString *firstName;
@property ( strong, nonatomic ) NSString *lastName;
@property ( strong, nonatomic ) NSString *className;

// Why doesn't synthesize take care of this??
/*
- (void) setFirstName: (NSString *) firstNameInput;
- (void) setLastName: (NSString *) lastNameInput;
- (void) setClassName: (NSString *) classNameInput;

- (NSString *) getClassName;
- (NSString *) getStudentFirstName;
- (NSString *) getStudentLastName;
*/
@end
