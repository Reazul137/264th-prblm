//
//  main.m
//  GCD
//
//  Created by Reazul Islam on 5/8/18.
//  Copyright © 2018 Reazul Islam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
/* method declaration */
- (int)max:(int)num1 andNum2:(int)num2;
@end

@implementation SampleClass

/* method returning the max between two numbers */
- (int)max:(int)num1 andNum2:(int)num2{
    /* local variable declaration */
    int result;
    for(int i=1; i<=num1 && i<=num2; i++)
    {
        if(num1 % i == 0 && num2 % i == 0)
            result=i;
    }
        
    return result;
}

@end

int main ()
{
    /* local variable definition */
    int a,b,ret;
    
    SampleClass *sampleClass = [[SampleClass alloc]init];
    scanf("%d %d", &a,&b);
    /* calling a method to get max value */
    ret = [sampleClass max:a andNum2:b];
    
    NSLog(@"Max value is : %d\n", ret );
    
    return 0;
}
