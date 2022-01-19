//
//  LocationStore.swift
//  Trekr Multiplatform
//
//  Created by Devon Kenneth Hansen on 2022-01-19.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
        
        // get a pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        //load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        //sort the list of locations in alphabetical order by name ascending
        places.sort(by: {
            $0.name < $1.name
        })
    }
}


var testStore = LocationStore()
