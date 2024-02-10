//
//  LandmarkRow.swift
//  LandmarksV3
//
//  Created by Oscar Epp on 2/9/24.
//

import SwiftUI

// Struct for a landmark row
struct LandmarkRow: View {
    // Defines a landmark var
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}




#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
