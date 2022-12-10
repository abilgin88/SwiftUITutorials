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
        // Embed in VStack
        VStack(alignment: .leading) { // Edit the VStack initializer to align the views by their leading edges.
            Text("Turtle Rock")
                .font(.title)
            // to add another text view to the right of the location, this for the park’s state.
            HStack {
                // add a text view to the stack by dragging a Text view from the library(+).
                Text("Joshua Tree National Park")
                    // Set the location’s font to subheadline.
                    .font(.subheadline)
                    // adding a Spacer to the horizontal stack holding the two text views.
                Spacer()
                Text("California")
                    .font(.subheadline) //  give the landmark’s name and details a little more space.
            }
        }
        .padding()
    }
}

// The second structure declares a preview for that view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        //the preview updates to reflect your changes.
        ContentView()
    }
}
