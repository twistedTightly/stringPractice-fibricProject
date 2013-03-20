//
//  SPHomeViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 3/5/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//
//  VC for initial view of the application.  The user will see two tables which contain students and rubrics, respectively.
//  They can select students or rubrics to edit, select a combination of both to grade, or create/delete a student or rubric

#import "SPHomeViewController.h"

@interface SPHomeViewController ()


@property (strong, nonatomic) NSMutableArray *students; // Holds student objects returned from create student view
@property (strong, nonatomic) NSMutableArray *rubrics;
//@property (strong, nonatomic) SPStudent* editedStudent;
@property (weak, nonatomic) IBOutlet UILabel *studentPropertyDisplay;

@end

@implementation SPHomeViewController

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
    
    // Changes the navigation bar's back item label
    self.navigationItem.backBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Cancel"
                                     style:UIBarButtonItemStyleBordered
                                    target:nil
                                    action:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Setters/Getters overridden

// **Must use synthesize if both setter and getter overridden

// Lazy instantiation
- (NSMutableArray *) students {
    if (!_students) {
        _students = [[NSMutableArray alloc] init];
    }
    
    return _students;
}

-(NSMutableArray *)rubrics {
    if (!_rubrics) {
        _rubrics = [[NSMutableArray alloc] init];
    }
    
    return _rubrics;
}


#pragma mark - Model Methods

// Try to use as delegate method? Was part of OLD passing strategy for passing a new or edited student between VCs
- (void) addStudent:(SPStudent *) editedStudent {
    NSLog( @"Add student called");
    if (!editedStudent) {
        [self.students addObject:editedStudent];
        NSLog(@"%@", [(SPStudent *)(self.students[0]) firstName] ); // A string's description is itself
    }
}

@end