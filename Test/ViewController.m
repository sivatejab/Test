//
//  ViewController.m
//  Test
//
//  Created by B Siva teja on 26/09/15.
//  Copyright © 2015 B Siva teja. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
     BOOL evenShake;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    evenShake = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if ( event.subtype == UIEventSubtypeMotionShake )
    {
        if (evenShake) {
            
                   }else{
                       
            evenShake= YES;
            [UIView animateWithDuration:0.5
                             animations:^{
                                 
                                 
                             }];
        }
        
    }
    
    if ( [super respondsToSelector:@selector(motionEnded:withEvent:)] )
        [super motionEnded:motion withEvent:event];
}

- (BOOL)canBecomeFirstResponder
{ return YES; }

@end
