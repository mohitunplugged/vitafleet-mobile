# Rollback plan — v2.4.0

If crash rate exceeds 2% or the live map misbehaves:
1. Flip the `live-map-launch` LaunchDarkly flag to 0% (kill switch, instant).
2. If needed, expedite v2.3.1 via TestFlight and phased App Store release halt.
