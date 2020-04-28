//
//  ViewController.swift
//  HackwichTen
//
//  Created by Student on 4/27/20.
//  Copyright © 2020 Joseph Payongayong. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // will center around UHWO when loaded
    centerMapOnLocation(location: initialLocation)
        // Do any additional setup after loading the view.
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        
        let restaurantTwo = Restaurant(title: "Sushi Bay", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.339898, longitude: -158.078250))
        
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
    }
//created function to  have the map center on a location
    func centerMapOnLocation(location: CLLocation){
        
        let coordinateRegion = MKCoordinateRegion (center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
}

