// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Projects")

#cvEntry(
  title: [Selected Engineering & Data Projects],
  society: [#link("https://github.com/Ourouk")[github.com/Ourouk]],
  date: [2024 - Present],
  location: [Open Source],
  description: list(
    [nostalgia-launcher (Python/PySide6): torrent-verified updater with isolated profiles, tests and cross-platform releases.],
    [EcoArbiter (Rust/MQTT): energy time-series monitor – 3-scenario allowance algorithm, YAML config, Docker Compose, benchmarks.],
    [Self-hosted stack on OVH/Scaleway (Nextcloud, DNS/mail) + DevContainers + HEPL Typst template.],
  ),
  tags: ("Python", "Rust", "Docker", "Data"),
)
