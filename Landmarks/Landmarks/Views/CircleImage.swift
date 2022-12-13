//
//  CircleImage.swift
//  Landmarks
//
//  Created by Abdullah Bilgin on 12/10/22.
//

// Insert the image and modify its display to match the desired design.

import SwiftUI

struct CircleImage: View {
    var body: some View {
        // 1: Insert the image
        Image("turtlerock")
            // 2: Add a call to clipShape(Circle()) to apply the circular clipping shape to the image.
            .clipShape(Circle())
            // 3: Create another circle with a gray stroke, and then add it as an overlay to give the image a border.
            .overlay {
                Circle().stroke(.white, lineWidth: 4) // 5: Switch the border color to white.
            }
            .shadow(radius: 7) // 4: add a shadow with a 7 point radius.
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
