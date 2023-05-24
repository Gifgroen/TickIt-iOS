//
//  ContentView.swift
//  Tick It
//
//  Created by Karsten Westra on 24/05/2023.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    VStack {
      Image(systemName: "calendar.circle")
          .imageScale(.large)
          .foregroundColor(.accentColor)
      Text("Hello, Tick 't!")
      
      EventListView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
