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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
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
