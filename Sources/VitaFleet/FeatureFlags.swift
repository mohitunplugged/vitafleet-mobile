import Foundation
import LaunchDarkly

/// Thin wrapper over LaunchDarkly so we can stage rollouts per cohort.
enum FeatureFlags {
  static func isEnabled(_ key: String) -> Bool {
    LDClient.get()?.boolVariation(forKey: key, defaultValue: false) ?? false
  }
}
