//
//  NewItemController.m
//  ToDo
//
//  Created by Aaron Rogers on 4/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NewItemController.h"

@interface NewItemController ()

@end

@implementation NewItemController

@synthesize delegate;
@synthesize itemTextField;

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

- (void)viewDidUnload
{
    [self setItemTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)doneClicked:(id)sender {
    [delegate newItemController:self didAddItem:self.itemTextField.text];
}

- (IBAction)cancelClicked:(id)sender {
    [delegate newItemControllerDidCancel:self];
}
@end
