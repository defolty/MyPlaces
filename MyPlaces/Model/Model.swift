//
//  Model.swift
//  MyPlaces
//
//  Created by Nikita Nesporov on 30.03.2022.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    
    static let restaurantName = [
        "Burger Heroes", "Kitchen", "Love&Life", "Morris Pub",
        "Sherlock Holmes", "Speak Easy", "X.O", "Балкан Гриль",
        "Бочка", "Вкусные истории", "Дастархан",
        "Индокитай", "Классик", "Шок", "Bonsai"
    ]

    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantName {
            places.append(Place(name: place, location: "Ekaterinburg", type: "Restaurant", image: place))
        }
        
        return places
    }
}
