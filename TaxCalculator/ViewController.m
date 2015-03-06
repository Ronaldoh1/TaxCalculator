//
//  ViewController.m
//  TaxCalculator
//
//  Created by Ronald Hernandez on 3/5/15.
//  Copyright (c) 2015 Ronald Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonTapped:(id)sender {
    NSString *text = self.priceTextField.text;
    double number = text.intValue;


    if (self.segmentedControl.selectedSegmentIndex == 0) {

        double results = number * self.caTax;


        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", results];


    } else if (self.segmentedControl.selectedSegmentIndex == 1){
        double results = number * self.chiTax;


        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", results];

    }else if (self.segmentedControl.selectedSegmentIndex == 2){
        double results = number * self.nyTax;


        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", results];

    }
}

@end
