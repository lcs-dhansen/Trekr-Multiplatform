//
//  Trekr_MultiplatformApp.swift
//  Shared
//
//  Created by Devon Kenneth Hansen on 2022-01-18.
//

import SwiftUI

@main
struct Trekr_MultiplatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                NavigationView {
                    LocationsList(store:store)
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView {
                   WorldMap()
                }
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                }
                .tabItem{
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
            }
        }
    }
}
