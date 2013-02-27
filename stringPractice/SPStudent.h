//
//  SPStudent.h
//  stringPractice
//
//  Created by Learning Technology Lab on 2/22/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPStudent : NSObject

- (void) setFirstName: (NSString *) firstNameInput;
- (void) setLastName: (NSString *) lastNameInput;
- (void) setClassName: (NSString *) classNameInput;

- (NSString *) getClassName;

@end
