//
//  SPCreateStudentViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 2/20/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPCreateStudentViewController.h"

@interface SPCreateStudentViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInputField;
@property (weak, nonatomic) IBOutlet UITextField *classInputField;
@property (weak, nonatomic) IBOutlet UILabel *studentNameDisplay;

@property (strong, nonatomic) SPStudent *currentStudent;


@end

@implementation SPCreateStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.currentStudent = [[SPStudent alloc] init];
    
    // Enables the user to stop editing the text field when they tap outside the field
    UITapGestureRecognizer *tapScroll = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    tapScroll.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapScroll];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Save string input by user to currentStudent object
- (IBAction)firstNameEdited:(id)sender {
    self.currentStudent.firstName = self.firstNameInputField.text;
    self.studentNameDisplay.text = [self.currentStudent firstName];
}

- (IBAction)lastNameEdited:(id)sender {
   self.currentStudent.lastName = self.lastNameInputField.text;
   self.studentNameDisplay.text = [self.currentStudent lastName];
}

- (IBAction)classNameEdited:(id)sender {self.currentStudent.className = self.lastNameInputField.text;
    self.studentNameDisplay.text = [self.currentStudent className];
}


// Ends editing of text fields for enter button on keyboard, DONE on ipad keyboard
- (BOOL) textFieldShouldReturn: (UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// Ends editing on touch outside of field - input will be saved, keyboard will be dismissed
- (void) tapped {
    NSLog(@"tapped to end editing method");
    [self.view endEditing:YES];
}

@end
