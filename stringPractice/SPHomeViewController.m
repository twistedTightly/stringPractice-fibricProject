//
//  SPHomeViewController.m
//  stringPractice
//
//  Created by Learning Technology Lab on 3/5/13.
//  Copyright (c) 2013 Learning Technology Lab. All rights reserved.
//

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

#pragma mark - Model Methods

- (void) addStudent:(SPStudent *) editedStudent {
    if (!editedStudent) {
        [self.students addObject:editedStudent];
    }
}

@end