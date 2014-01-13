//
//  FirstViewController.m
//  TapTest
//
//  Created by SDT-1 on 2014. 1. 13..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
// 6c027b3fa7c2bdf7a719a70732da9904e303a8df

#import "FirstViewController.h"
#import "AppDelegate.h"

@interface FirstViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FirstViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
	AppDelegate *delegate = [UIApplication sharedApplication].delegate;
	delegate.sharedStr = self.textField.text;
}

- (void)viewWillAppear:(BOOL)animated {
	AppDelegate *delegate = [UIApplication sharedApplication].delegate;
	self.textField.text = delegate.sharedStr;
}

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

@end
