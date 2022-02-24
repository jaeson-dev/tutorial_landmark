//
//  LandmarkDetail.swift
//  tutorial_landmark
//
//  Created by Jaeson.dev on 2022/02/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
           ScrollView {
               MapView(coordinate: landmark.locationCoordinate)
                   .ignoresSafeArea(edges: .top)
                   .frame(height: 300)
               
               CircleImage(image: landmark.image)
                   .offset(y: -130)
                   .padding(.bottom, -130)
               
               VStack(alignment: .leading) {
                   Text(landmark.name)
                           .font(.title)
                           .fontWeight(.medium)
                           .foregroundColor(Color.green)
                       HStack {
                           Text(landmark.park)
                           Text(landmark.state)

                       }
                       .font(.subheadline)
                       .foregroundColor(.secondary)
                   
                       Divider()
                   
                   Text("About \(landmark.name)")
                           .font(.title2)
                   Text(landmark.description)
                   }
               .padding()
           }
           .navigationTitle(landmark.name)
           .navigationBarTitleDisplayMode(.inline)
           
       }
    }


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
