// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

// Tags as pill boxes next to the society (the template renders `tags:` below the description).
#let entry-tags(tags) = text(
  weight: "regular",
  fill: rgb("#212529"),
  {
    for tag in tags {
      box(
        inset: (x: 0.25em),
        outset: (y: 0.25em),
        fill: rgb("#ededee"),
        radius: 3pt,
        align(center, tag),
      )
      h(5pt)
    }
  },
)


#cvSection("Projects")

#cvEntry(
  title: [Selected Engineering & Data Projects],
  society: [#link("https://github.com/Ourouk")[github.com/Ourouk] #h(
      8pt,
    ) #entry-tags(("Python", "Rust", "Docker", "Data"))],
  date: [2024 - Present],
  location: [Open Source],
  description: list(
    [nostalgia-launcher (Python/PySide6): torrent-verified updater with isolated profiles, tests and cross-platform releases.],
    [EcoArbiter (Rust/MQTT): energy time-series monitor – 3-scenario allowance algorithm, YAML config, Docker Compose, benchmarks.],
    [Self-hosted stack on OVH/Scaleway (Nextcloud, DNS/mail) + DevContainers + HEPL Typst template.],
  ),
)
