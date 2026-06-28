import Foundation

/// Decides which launch experience to show.
@MainActor
final class LaunchViewModel: ObservableObject {
  @Published var showLiveMap = false

  func load() async {
    // Staged rollout: only cohorts flagged in for the new live-map launch screen.
    showLiveMap = FeatureFlags.isEnabled("live-map-launch")
  }
}
