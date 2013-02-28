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
UIView *newStudentView;

- (void)viewDidLoad
{
    [super viewDidLoad];
   _currentStudent = [[SPStudent alloc] init];
    
    // Enables the user to stop editing the text field when they tap outside the field
    newStudentView = [[UIView alloc] init];
    UITapGestureRecognizer *tapScroll = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    tapScroll.cancelsTouchesInView = NO;
    [newStudentView addGestureRecognizer:tapScroll];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)firstNameEdited:(id)sender {
    _currentStudent.firstName = self.firstNameInputField.text;
    _studentNameDisplay.text = [_currentStudent getStudentFirstName];
    [self resignFirstResponder];
}

- (IBAction)lastNameEdited:(id)sender {
   _currentStudent.lastName = self.lastNameInputField.text;
    _studentNameDisplay.text = [_currentStudent getStudentLastName];
    [self resignFirstResponder];
}


- (IBAction)classNameEdited:(id)sender {
    _currentStudent.className = self.lastNameInputField.text;
    _studentNameDisplay.text = [_currentStudent getClassName];
    [self resignFirstResponder];
}

// Ends editing so input will be saved, keyboard will be dismissed
- (void) tapped {
    [newStudentView endEditing:YES];
}


@end
