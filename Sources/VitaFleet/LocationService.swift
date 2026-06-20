import Foundation
import CoreLocation

struct Vehicle: Identifiable {
  let id: String
  let name: String
  let status: String
  let coordinate: CLLocationCoordinate2D
}

@MainActor
final class LocationService: ObservableObject {
  @Published var vehicles: [Vehicle] = []

  func refresh() async {
    // Pull the latest positions from the fleet API.
    vehicles = []
  }
}
