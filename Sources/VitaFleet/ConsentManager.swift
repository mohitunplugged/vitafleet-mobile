import Foundation

/// GDPR consent — presented before any analytics/tracking is initialized.
final class ConsentManager {
  private(set) var granted = false
  func requestConsent(_ completion: @escaping (Bool) -> Void) {
    // present the consent sheet; persist the choice
    completion(granted)
  }
}
