//
//  ViewController.m
//  simple obj c app
//
//  Created by Admin on 19.02.23.
//

#import "ViewController.h"

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
    // Do any additional setup after loading the view.
    self.textField = [[UITextField alloc]
                     initWithFrame:
                     CGRectMake(45.0f, 100.0f, 300.0f, 30.0f)];
    self.textField.delegate = self;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview: self.textField];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(140.0f, 200.0f, 100.0f, 30.0f);
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Push me!🍑"
            forState:UIControlStateNormal];
    [self.view addSubview:button];
    self.label = [[UILabel alloc]
                  initWithFrame:CGRectMake(160.0f, 300.0f, 200.0f, 30.0f)];
    self.label.text = @"Hello 👶";
    [self.view addSubview:self.label];
    self.img1 = [[UIImageView alloc] initWithFrame:CGRectMake(10.0f, 300.0f, 370.0f, 400.0f)];
    [self.img1 setImage:[UIImage imageNamed:@"img"]];
    [self.img1 setContentMode:UIViewContentModeScaleAspectFit];
    [self.img1 setAlpha:0.5f];
    [self.view addSubview:self.img1];
    self.img2 = [[UIImageView alloc] initWithFrame:CGRectMake(10.0f, 300.0f, 370.0f, 400.0f)];
    [self.img2 setImage:[UIImage imageNamed:@"img2"]];
    [self.img2 setContentMode:UIViewContentModeScaleAspectFit];
    [self.img2 setAlpha:0.0f];
    [self.view addSubview:self.img2];
    
  
}

- (void) buttonPressed {
    self.label.text = self.textField.text;
    [self.img2 setAlpha:1.0f];
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField {
    [_textField resignFirstResponder];
    return NO;
}


@end
