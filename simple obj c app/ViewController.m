//
//  ViewController.m
//  simple obj c app
//
//  Created by Admin on 19.02.23.
//

#import "ViewController.h"

//MARK: - Interface

@interface ViewController ()

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic,strong) UIImage *image;
@property (nonatomic,strong) UIImageView *img1;
@property (nonatomic,strong) UIImageView *img2;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    [self setupImages];
    [self setupLabel];
    [self setupButton];
    [self setupTextField];
}

#pragma mark - UI Methods

- (void) setupImages {
    CGFloat width = 370.0f;
    CGFloat height = 400.0f;
    CGFloat xPoint = (self.view.frame.size.width - width) / 2;
    CGFloat yPoint = (self.view.frame.size.height - height) / 2;
    
    self.img1 = [[UIImageView alloc] initWithFrame:CGRectMake(xPoint, yPoint, width, height)];
    [self.img1 setImage:[UIImage imageNamed:@"img"]];
    [self.img1 setContentMode:UIViewContentModeScaleAspectFit];
    [self.img1 setAlpha:0.5f];
    [self.view addSubview:self.img1];
    self.img2 = [[UIImageView alloc] initWithFrame:CGRectMake(xPoint, yPoint, width, height)];
    [self.img2 setImage:[UIImage imageNamed:@"img2"]];
    [self.img2 setContentMode:UIViewContentModeScaleAspectFit];
    [self.img2 setAlpha:0.0f];
    [self.view addSubview:self.img2];
}

- (void) setupLabel {
    CGFloat height = 50.0f;
    CGFloat width = 300.0f;
    CGFloat xPoint = (self.view.frame.size.width - width) / 2;
    CGFloat yPoint = 200.0f;
    
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(xPoint, yPoint, width, height)];
    self.label.text = @"Hello 👶";
    [self.view addSubview:self.label];
}

- (void) setupButton {
    CGFloat width = 100.0f;
    CGFloat height = 30.0f;
    CGFloat xPoint = (self.view.frame.size.width - width) / 2;
    CGFloat yPoint = 150.0f;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(xPoint, yPoint, width, height);
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Push me!🍑"
            forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void) setupTextField {
    CGFloat width = 300.0f;
    CGFloat height = 30.0f;
    CGFloat xPoint = (self.view.frame.size.width - width) / 2;
    CGFloat yPoint = 100.0f;
    
    self.textField = [[UITextField alloc]
                     initWithFrame:
                     CGRectMake(xPoint, yPoint, width, height)];
    self.textField.delegate = self;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview: self.textField];
}
#pragma mark - UI Actions
- (void) buttonPressed {
    self.label.text = self.textField.text;
    [self.img2 setAlpha:1.0f];
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [_textField resignFirstResponder];
    return NO;
}


@end
