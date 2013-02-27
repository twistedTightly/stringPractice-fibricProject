//
//  SPViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 2/20/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPViewController.h"
#import "SPStudent.h"

@class SPStudent;  //why does this go here? what is it doing?

@interface SPViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *classInputField;
@property (weak, nonatomic) IBOutlet UILabel *studentNameDisplay;

@property (strong, nonatomic) SPStudent *currentStudent;

@end

@implementation SPViewController

@synthesize currentStudent = _currentStudent;

- (void)viewDidLoad
{
    [super viewDidLoad];
   _currentStudent = [[SPStudent alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstNameEdited:(id)sender {
    _currentStudent.firstName = self.firstNameInputField.text;
}

- (IBAction)lastNameEdited:(id)sender {
   _currentStudent.lastName = self.lastNameInputField.text;
}


- (IBAction)classNameEdited:(id)sender {
    _currentStudent.className = self.lastNameInputField.text;
    _studentNameDisplay.text = _currentStudent.className;
}

@end
