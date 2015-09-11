//
//  ViewController.m
//  JsonExample
//
//  Created by Wenqian Xu on 05/08/2015.
//  Copyright (c) 2015 Wenqian Xu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)initializeAllDataOfNSJSONSerialization{
        
        self.allProvinceArray = [NSMutableArray array];
        
        NSData * jsonData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"hebei" ofType:@"txt"]];
        
        NSError * error = nil;
        id obj = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        
        NSMutableDictionary * countryDic = obj;
        NSDictionary * countryInfo = [countryDic objectForKey:@"country"];
        
        NSDictionary * provinceInfo = [countryInfo objectForKey:@"province"];
        NSString * pName = [provinceInfo objectForKey:@"-name"];
        NSString * pNumber = [provinceInfo objectForKey:@"-number"];
        
        HMTProvince * province = [[HMTProvince alloc]initWithName:pName withNumber:pNumber];
        [self.allProvinceArray addObject:province];
        
        NSArray * cityArray = [provinceInfo objectForKey:@"city"];
        for (int i = 0; i < [cityArray count]; i++) {
            
            NSDictionary * cityInfo = [cityArray objectAtIndex:i];
            NSString * cName = [cityInfo objectForKey:@"-name"];
            NSString * cNumber = [cityInfo objectForKey:@"-number"];
            
            HMTCity * city = [[HMTCity alloc]initWithName:cName withNumber:cNumber];
            [province.cityArray addObject:city];
            
            NSArray * areaArray = [cityInfo objectForKey:@"area"];
            for (int j = 0; j < [areaArray count]; j++) {
                
                NSString * aName = [[areaArray objectAtIndex:j] objectForKey:@"#text"];
                NSString * aNumber = [[areaArray objectAtIndex:j] objectForKey:@"-number"];
                
                HMTArea * area = [[HMTArea alloc]initWithName:aName withNumber:aNumber];
                [city.areaArray addObject:area];
                
                [area release];  
            }  
            
            [city release];  
        }  
        
        [province release];  
    }
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
