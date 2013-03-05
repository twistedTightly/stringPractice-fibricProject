//
//  SPCreateStudentViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 2/20/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPCreateStudentViewController.h"
#import "SPStudent.h"

@class SPStudent;  //why does this go here? what is it doing?

@interface SPCreateStudentViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *classInputField;
@property (weak, nonatomic) IBOutlet UILabel *studentNameDisplay;

@property (strong, nonatomic) SPStudent *currentStudent;


@end

@implementation SPCreateStudentViewController

@synthesize currentStudent;
@synthesize studentNameDisplay;

- (void)viewDidLoad
{
    [super viewDidLoad];
   currentStudent = [[SPStudent alloc] init];
    
    // Enables the user to stop editing the text field when they tap outside the field
    UITapGestureRecognizer *tapScroll = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    tapScroll.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapScroll];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Save string input by user to currentStudent object
- (IBAction)firstNameEdited:(id)sender {
    currentStudent.firstName = self.firstNameInputField.text;
    studentNameDisplay.text = [currentStudent getStudentFirstName];
}

- (IBAction)lastNameEdited:(id)sender {
   currentStudent.lastName = self.lastNameInputField.text;
   studentNameDisplay.text = [currentStudent getStudentLastName];
}

- (IBAction)classNameEdited:(id)sender {currentStudent.className = self.lastNameInputField.text;
    studentNameDisplay.text = [currentStudent getClassName];
}


// Ends editing of text fields for enter button on keyboard, DONE on ipad keyboard
- (BOOL) textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Ends editing on touch outside of field - input will be saved, keyboard will be dismissed
- (void) tapped {
    [self.view endEditing:YES];
}

@end
