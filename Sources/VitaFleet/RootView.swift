import SwiftUI

struct RootView: View {
  @StateObject private var launch = LaunchViewModel()
  var body: some View {
    Group {
      if launch.showLiveMap {
        FleetMapView()
      } else {
        FleetListView()
      }
    }
    .task { await launch.load() }
  }
}
