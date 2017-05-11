//
//  ViewController.m
//  MasterProject
//
//  Created by Komal Gaikwad on 26/09/16.
//  Copyright © 2016 Komal Gaikwad. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "RecipeViewController.h"
#import "componentViewController.h"
#import "PlayerViewController.h"
#import "CollectionViewController.h"
#import "Loader.h"

@interface ViewController ()
{
    UIButton *btnTableview,*btnPlayer,*btnComponent,*btnCollection,*btnloader;
    UILabel *lblmain;
    UIImage *musicImg,*vdoimg,*tblimg,*compoimg,*loaderimg;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    //to create label
    lblmain=[[UILabel alloc]init];
    lblmain.text=@"Master View";
    lblmain.textColor=[UIColor whiteColor];
    lblmain.backgroundColor=[UIColor purpleColor];
    lblmain.frame=CGRectMake(0, 0, 330, 40);
    lblmain.font=[UIFont boldSystemFontOfSize:22.0];
    lblmain.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lblmain];
    
    //to create button for tableview
    btnTableview=[[UIButton alloc]init];
    btnTableview.frame=CGRectMake(50, 50, 220, 90);
    [btnTableview setTitle:@"UITableView" forState:UIControlStateNormal];
    [btnTableview setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnTableview setBackgroundColor:[UIColor clearColor]];
    btnTableview.layer.borderWidth=2;
    btnTableview.layer.cornerRadius=20;
    btnTableview.clipsToBounds = YES;
    
    tblimg=[UIImage imageNamed:@"Tableview.jpg"];
    [btnTableview setImage:tblimg forState:UIControlStateNormal];
    
    UILabel *l3=[[UILabel alloc]init];
    l3.frame=CGRectMake(60, 60, 100, 30);
    l3.text=@"TableView";
    l3.textColor=[UIColor whiteColor];
    //l3.backgroundColor=[UIColor cyanColor];
    [btnTableview addSubview:l3];
    
    [btnTableview addTarget:self action:@selector(btnTableviewpressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnTableview];
    
    //to create button for player
    btnPlayer=[[UIButton alloc]init];
    btnPlayer.frame=CGRectMake(50, 150, 220, 90);
    [btnPlayer setTitle:@"PlayerView" forState:UIControlStateNormal];
    [btnPlayer setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnPlayer setBackgroundColor:[UIColor lightGrayColor]];
    btnPlayer.layer.borderWidth=2;
    btnPlayer.layer.cornerRadius=20;
    btnPlayer.clipsToBounds=YES; // to get rounds on button
    musicImg=[UIImage imageNamed:@"Music.jpg"];
    [btnPlayer setImage:musicImg forState:UIControlStateNormal];
    
    
    UILabel *l1=[[UILabel alloc]init];
    l1.frame=CGRectMake(60, 60, 100, 30);
    l1.text=@"PlayerView";
    l1.textColor=[UIColor whiteColor];
    [btnPlayer addSubview:l1];
    [btnPlayer addTarget:self action:@selector(btnplayerpressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPlayer];
    
   //to create button for component
    btnComponent=[[UIButton alloc]init];
    btnComponent.frame=CGRectMake(50, 250, 220, 90);
    [btnComponent setTitle:@"UIComponentView" forState:UIControlStateNormal];
    [btnComponent setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnComponent setBackgroundColor:[UIColor lightGrayColor]];
    btnComponent.layer.borderWidth=2;
    btnComponent.layer.cornerRadius=20;
    btnComponent.clipsToBounds=YES;
    compoimg =[UIImage imageNamed:@"Component.jpg"];
    [btnComponent setImage:compoimg forState:UIControlStateNormal];
    
    UILabel *l4=[[UILabel alloc]init];
    l4.frame=CGRectMake(50, 60, 150, 30);
    l4.textColor=[UIColor whiteColor];
    l4.text=@"ComponentView";
    //l4.backgroundColor=[UIColor cyanColor];
    [btnComponent addSubview:l4];
    
    [btnComponent addTarget:self action:@selector(btnComponentpressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnComponent];
    
    //to create collection button
    btnCollection=[[UIButton alloc]init];
    btnCollection.frame=CGRectMake(50, 350, 220, 90);
    [btnCollection setTitle:@"UICollectionView" forState:UIControlStateNormal];
    [btnCollection setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnCollection setBackgroundColor:[UIColor lightGrayColor]];
    btnCollection.layer.borderWidth=2;
    btnCollection.layer.cornerRadius=20;
    btnCollection.clipsToBounds=YES;
    vdoimg=[UIImage imageNamed:@"Collection.jpg"];
    [btnCollection setImage:vdoimg forState:UIControlStateNormal];
    
    UILabel *l2=[[UILabel alloc]init];
    l2.frame=CGRectMake(60, 60, 140, 30);
    l2.text=@"CollectionView";
    l2.textColor=[UIColor whiteColor];
    //l2.backgroundColor=[UIColor cyanColor];
    [btnCollection addSubview:l2];
    [btnCollection addTarget:self action:@selector(btnCollectionpressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCollection];
    
    // create button for loader
    btnloader=[[UIButton alloc]init];
    btnloader.frame=CGRectMake(50, 450, 220, 90);
    [btnloader setTitle:@"Loader" forState:UIControlStateNormal];
    [btnloader setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btnloader setBackgroundColor:[UIColor lightGrayColor]];
    btnloader.layer.borderWidth=2;
    btnloader.layer.cornerRadius=20;
    btnloader.clipsToBounds=YES;
    loaderimg=[UIImage imageNamed:@"placeholder.png"];
    [btnloader setImage:loaderimg forState:UIControlStateNormal];
    
    UILabel *l5=[[UILabel alloc]init];
    l5.frame=CGRectMake(80, 60, 120, 30);
    l5.text=@"Loader";
    l5.textColor=[UIColor blackColor];
    
    //l5.backgroundColor=[UIColor cyanColor];
    [btnloader addSubview:l5];
    [btnloader addTarget:self action:@selector(btnLoaderPressed) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnloader];
    
}

//to create method for tableview button
-(void)btnTableviewpressed
{
    NSLog(@"\n Tableview button pressed");

    UIStoryboard *storyboard1 = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RecipeViewController *rc = [storyboard1 instantiateViewControllerWithIdentifier:@"RecipeViewController"];
    [self presentViewController:rc animated:YES completion:nil ];

    
}


//to create method for player button
-(void)btnplayerpressed
{
    NSLog(@"\n player button pressed");
    UIStoryboard *storyboard2=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    PlayerViewController *pc=[storyboard2 instantiateViewControllerWithIdentifier:@"PlayerViewController"];
    [self presentViewController:pc animated:YES completion:nil];
    
}

//to create method for component button
-(void)btnComponentpressed
{
    NSLog(@"Component button pressed");
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    componentViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"componentViewController"];
    
    
    [self presentViewController:vc animated:YES completion:nil ];
}


//methof of collection button
-(void)btnCollectionpressed
{
    NSLog(@"Collection button pressed");
    UIStoryboard *storyboardcol = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CollectionViewController *cc = [storyboardcol instantiateViewControllerWithIdentifier:@"CollectionViewController"];
    
    
    [self presentViewController:cc animated:YES completion:nil ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnLoaderPressed
{
    NSLog(@"\n Btn loader is presed");
    UIStoryboard *storyboardloader=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    Loader *ld=[storyboardloader instantiateViewControllerWithIdentifier:@"Loader"];
    
    [self presentViewController:ld animated:YES completion:nil];
}


@end
