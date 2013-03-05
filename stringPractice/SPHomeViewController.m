//
//  SPHomeViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 3/5/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

#import "SPHomeViewController.h"

@interface SPHomeViewController ()

// holds student objects returned from create student view
@property (strong, nonatomic) NSMutableArray *students;
@property (weak, nonatomic) IBOutlet UILabel *studentPropertyDisplay;

@end

@implementation SPHomeViewController

@synthesize studentPropertyDisplay;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// COPIED from stackoverflow answer
- (void)SPCreateStudentViewControllerDidFinish:(SPCreateStudentViewController *)SPCreateStudentViewController {
    NSMutableArray* anotherArray = SPCreateStudentViewController.someArray;
    //studentPropertyDisplay.text = anotherArray;
}

@end