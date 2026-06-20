import SwiftUI

struct FleetListView: View {
  @StateObject private var svc = LocationService()
  var body: some View {
    List(svc.vehicles) { v in
      VStack(alignment: .leading) {
        Text(v.name).font(.headline)
        Text(v.status)
      }
    }
    .navigationTitle("Fleet")
  }
}
