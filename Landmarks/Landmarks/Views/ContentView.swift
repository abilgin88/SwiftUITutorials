//
//  ContentView.swift
//  Landmarks
//
//  Created by Abdullah Bilgin on 12/10/22.
//

import SwiftUI

// The first structure conforms to the View protocol and describes the view’s content and layout.
struct ContentView: View {
    
    // body property
    var body: some View {
        
        // view’s body property
        // Embed the texts in VStack
        VStack { // 2-1:  Embed for the name and place, a circular image, and a map for the location.
            
            // 2-2: Add custom MapView to the top of the stack
            MapView()
            //2-7 To allow the map content to extend to the top edge of the screen, add the ignoresSafeArea(edges: .top) modifier to the map view.
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)  //2-3: Set the size of the MapView with frame(width:height:).
            
            // 2-4: Add the CircleImage view to the stack.
            CircleImage()
                //2-5: To layer the image view on top of the map view, give the image an offset of -130 points vertically, and padding of -130 points from the bottom of the view.
                .offset(y: -130)
                .padding(.bottom, -130)
            
        
            
            VStack(alignment: .leading) { // Edit the VStack initializer to align the views by their leading edges.
                Text("Turtle Rock")
                    .font(.title)
                // to add another text view to the right of the location, this for the park’s state.
                HStack {
                    // add a text view to the stack by dragging a Text view from the library(+).
                    Text("Joshua Tree National Park")
                       
                        // adding a Spacer to the horizontal stack holding the two text views.
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                //2-9:  move the subheadline font modifier from each Text view to the HStack containing them, and apply the secondary color to the subheadline text.
                
                // 2-8: Add a divider and some additional descriptive text for the landmark.
                Divider()
                
            }
            .padding()
            
            //2-6: Add a spacer at the bottom of the outer VStack to push the content to the top of the screen
            Spacer()
        }
    }
}

// The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        //the preview updates to reflect your changes.
        ContentView()
    }
}
