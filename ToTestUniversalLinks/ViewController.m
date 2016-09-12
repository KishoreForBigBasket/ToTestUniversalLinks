//
//  ViewController.m
//  ToTestUniversalLinks
//
//  Created by Kishore Thejasvi on 25/03/2016.
//  Copyright © 2016 Kishore Thejasvi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textfield;

- (IBAction)didTapOnView:(id)sender;

- (IBAction)didSelectGo:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textfield.delegate = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://qa2.bigbasket.com/payment/wallet/"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapOnView:(id)sender
{
    [self.view endEditing:YES];
}

- (IBAction)didSelectGo:(id)sender
{
    [self openUniversalLink];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:YES];
    return YES;
}

- (void)openUniversalLink
{
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://qa2.bigbasket.com/payment/wallet/"]];
    
    if ([self.textfield.text length] > 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.textfield.text]];
    }
}

@end
