//
//  ClockController_ipad.m
//  SingMeToSleep
//
//  Created by Mike Hickman on 10/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ClockController_ipad.h"
#import "MTHNumber.h"

@implementation ClockController_ipad
@synthesize dotLabel;
@synthesize tenSecondsLabel;
@synthesize secondsLabel;
@synthesize tensMinutesLabel;
@synthesize minutesLabel;
@synthesize hoursLabel;
@synthesize tensHoursLabel;

- (void)dealloc {
    [dotLabel release];
    [tenSecondsLabel release];
    [secondsLabel release];
    [tensMinutesLabel release];
    [minutesLabel release];
    [hoursLabel release];
    [tensHoursLabel release];
    [super dealloc];
}

-(void)initScreen{
    MTHNumber *num=[self createNumberFromLabelArray:tenSecondsLabel];
    [super setTenSecondsNumber:num];
    [super setSecondsNumber:[self createNumberFromLabelArray:secondsLabel]];
    [super setTenMinutesNumber:[self createNumberFromLabelArray:tensMinutesLabel]];
    [super setMinutesNumber:[self createNumberFromLabelArray:minutesLabel]];
    [super setTenHoursNumber:[self createNumberFromLabelArray:tensHoursLabel]];
    [super setHoursNumber:[self createNumberFromLabelArray:hoursLabel]];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}
-(void)updateScreen{
    
        [self blink];
   
}

@end