//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Student on 4/27/20.
//  Copyright © 2020 Joseph Payongayong. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    
    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
init(title:String, type:String, coordinate: CLLocationCoordinate2D)
{
    self.restaurantTitle = title
    self.restaurantType = type
    self.coordinate = coordinate
    
    super.init()
    }

    var subtitle: String? {
        return restaurantTitle
    }
}
