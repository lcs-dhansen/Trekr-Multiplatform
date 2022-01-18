//
//  LocationDetail.swift
//  Trekr Multiplatform
//
//  Created by Devon Kenneth Hansen on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    //The location to show details about a copy of an instance of a structure will be provided to this view
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
            }
            
           
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location.example)
        }
    }
}
