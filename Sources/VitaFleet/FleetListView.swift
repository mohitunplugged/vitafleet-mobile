import SwiftUI

struct FleetListView: View {
  @StateObject private var svc = LocationService()
  var body: some View {
    List(svc.vehicles) { v in
      VStack(alignment: .leading) {
        Text(v.name).font(.headline).accessibilityLabel("Vehicle \(v.name)")
        Text(v.status).accessibilityLabel("Status \(v.status)")
      }
    }
    .navigationTitle("Fleet")
  }
}
