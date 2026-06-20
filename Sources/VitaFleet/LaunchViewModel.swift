import Foundation

/// Decides which launch experience to show.
@MainActor
final class LaunchViewModel: ObservableObject {
  @Published var showLiveMap = true

  func load() async {
    // TODO(launch-blocker): gate the new live-map launch screen behind a
    // staged rollout flag before GA so we can dial it back per cohort.
    // Right now every user gets it on first launch.
    showLiveMap = true
  }
}
