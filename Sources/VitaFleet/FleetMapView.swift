import SwiftUI
import MapKit

struct FleetMapView: View {
  @StateObject private var svc = LocationService()
  var body: some View {
    Map { ForEach(svc.vehicles) { v in Marker(v.name, coordinate: v.coordinate) } }
  }
}
