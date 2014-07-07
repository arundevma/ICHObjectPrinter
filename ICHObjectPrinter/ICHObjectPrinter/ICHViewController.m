//
//  ICHViewController.m
//  ICHObjectPrinter
//
//  Created by Arun Dev M A on 7/7/14.
//  Copyright (c) 2014 ichathan.com. All rights reserved.
//

#import "ICHViewController.h"

@interface ICHViewController ()

@end

@implementation ICHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ICHPerson *person = [[ICHPerson alloc]init];
    person.personName = @"Test User";
    person.personAge = @"22";
    person.personDescription = @"This is just a sample description";
    
    NSLog(@"Object description is %@",[ICHObjectPrinter descriptionForObject:person]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
