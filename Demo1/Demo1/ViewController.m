//
//  ViewController.m
//  Demo1
//
//  Created by David Santana Molina on 20/03/15.
//  Copyright (c) 2015 2Coders Studio. All rights reserved.
//

#import "ViewController.h"
@import MapKit; // 1. Importar MapKit


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // 2. Creamos una coordenada
    CLLocationCoordinate2D newCoordenate = CLLocationCoordinate2DMake(27.00, -15.00);
    
    // 3. Imprimimos la coordenada, primero comprobamos que es correcta
    
    if (CLLocationCoordinate2DIsValid(newCoordenate)) {
        
        NSLog(@"Latitud:%f - Longitud:%f",newCoordenate.latitude, newCoordenate.longitude);
        
    }else{
    
        NSLog(@"La coordenada no es validad");
        
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
