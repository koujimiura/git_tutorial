#import "GTRootViewController.h"
#import "GTScreen3ViewController.h"

@implementation GTRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.view.backgroundColor = [UIColor yellowColor];
  
  UILabel* label = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, 300, 100)];
  label.text = @"TB001";
  [self.view addSubview:label];
  
  UIButton *changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  changeButton.frame = CGRectMake((320-220)/2, 270, 220, 40);

  [changeButton setTitle:@"change bg-color" forState:UIControlStateNormal];
  [changeButton addTarget:self action:@selector(downChangeBgColor:) forControlEvents:UIControlEventTouchDown];
  [changeButton addTarget:self action:@selector(upChangeBgColor:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:changeButton];

  self.navigationItem.rightBarButtonItem = self.editButtonItem;
  
  // 画面３への遷移ボタン
  UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  button3.frame = CGRectMake((320-220)/2, 370, 220, 40);
  [button3 setTitle:@"画面３へ遷移" forState:UIControlStateNormal];
  [button3 addTarget:self action:@selector(pushButton3:) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button3];
  
}

- (void)pushButton3:(UIButton *)button {
  GTScreen3ViewController *screen3ViewController = [[GTScreen3ViewController alloc] init];
  [self.navigationController pushViewController:screen3ViewController animated:YES];
}

-(void)downChangeBgColor:(UIButton *)button{
  self.view.backgroundColor = [UIColor redColor];
}
-(void)upChangeBgColor:(UIButton *)button{
  self.view.backgroundColor = [UIColor yellowColor];
}

@end
