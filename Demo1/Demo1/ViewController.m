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

@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /* EJEMPLO 1
     
    // 2. Creamos una coordenada
    CLLocationCoordinate2D newCoordenate = CLLocationCoordinate2DMake(27.00, -15.00);
    
    // 3. Imprimimos la coordenada, primero comprobamos que es correcta
    
    if (CLLocationCoordinate2DIsValid(newCoordenate)) {
        
        NSLog(@"Latitud:%f - Longitud:%f",newCoordenate.latitude, newCoordenate.longitude);
        
    }else{
    
        NSLog(@"La coordenada no es validad");
        
    }
    
    END EJEMPLO 1 */
    
   
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
     /* EMEMPLO 2*/
    
    // Siempre se centra en 0 si no se configura con ninguna
    
    CLLocationCoordinate2D actualCenterOfMap = _map.centerCoordinate;
    
    NSLog(@"Centro mapa inicial -> Latitud:%f - Longitud:%f", actualCenterOfMap.latitude, actualCenterOfMap.longitude);
    
    
    // Preparamos la region a mostrar
    
    CLLocationCoordinate2D newCoord = CLLocationCoordinate2DMake(17.15, -15.26);
    MKCoordinateSpan zoom = MKCoordinateSpanMake(10.1,10.1); // Una ventana de 111km x 111km
    
    // Region = centro + span
    
    MKCoordinateRegion region = MKCoordinateRegionMake(newCoord, zoom);
    
    [_map setRegion:region];
    
    NSLog(@"Centro mapa posición usuario -> Latitud:%f - Longitud:%f", newCoord.latitude, newCoord.longitude);
    
    /*  END  EJEMPLO 2 */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
