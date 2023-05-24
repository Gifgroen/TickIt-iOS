//
//  EventListView.swift
//  Tick It
//
//  Created by Karsten Westra on 24/05/2023.
//

import SwiftUI

struct EventListView: View {

  @StateObject var presenter = EventPresenter()

  var body: some View {
    VStack {
      List {
        ForEach(presenter.events, id: \.id) { event in
          HStack {
            Text("\(event.id)")
            Text(event.title)
          }
          .padding()
        }
      }.listStyle(.insetGrouped)
    }
  }
}

struct EventListView_Previews: PreviewProvider {
  static var previews: some View {
    EventListView()
  }
}
