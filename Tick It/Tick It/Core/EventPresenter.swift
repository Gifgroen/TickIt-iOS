//
//  EventStateObject.swift
//  Tick It
//
//  Created by Karsten Westra on 24/05/2023.
//

import Foundation

class EventPresenter: ObservableObject {
  @Published var events: [Event] = []

  init() {
    let request = URLRequest(url: URL(string: "http://localhost:8000/events/all")!)
    URLSession.shared.dataTask(with: request) { data, response, error in
      guard error == nil else {
        print("An error ocurred: \(String(describing: error))")
        return
      }

      DispatchQueue.main.async {
        do {
          let decoder = JSONDecoder()
          self.events = try decoder.decode([Event].self, from: data!)
        } catch {
          print("Error: \(error)")
        }
      }

    }.resume()
  }
}
