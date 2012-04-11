//
//  NewItemController.h
//  ToDo
//
//  Created by Aaron Rogers on 4/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NewItemController;

@protocol NewItemControllerDelegate <NSObject>

- (void)newItemControllerDidCancel:(NewItemController *)controller;
- (void)newItemController:(NewItemController *)controller didAddItem:(NSString *)item;

@end

@interface NewItemController : UIViewController

@property (weak, nonatomic) id<NewItemControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *itemTextField;
- (IBAction)doneClicked:(id)sender;
- (IBAction)cancelClicked:(id)sender;

@end
