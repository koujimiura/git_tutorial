//
//  GTScreen3ViewController.m
//  git-tutorial
//
//  Created by 淡島 弘吏 on 2012/11/07.
//  Copyright (c) 2012年 Takeshi Shoji. All rights reserved.
//

#import "GTScreen3ViewController.h"

@interface GTScreen3ViewController ()

@end

@implementation GTScreen3ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
      self.view.backgroundColor = [UIColor greenColor];
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
