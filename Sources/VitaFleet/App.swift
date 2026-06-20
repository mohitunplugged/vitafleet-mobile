import SwiftUI
import FirebaseCore
import FirebaseCrashlytics

@main
struct VitaFleetApp: App {
  init() {
    FirebaseApp.configure()
    Crashlytics.crashlytics().setCrashlyticsCollectionEnabled(true)
  }
  var body: some Scene {
    WindowGroup { RootView() }
  }
}
