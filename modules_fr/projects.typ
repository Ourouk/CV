// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Projets")

#cvEntry(
  title: [Projets Ingénierie & Data],
  society: [#link("https://github.com/Ourouk")[github.com/Ourouk]],
  date: [2024 - Présent],
  location: [Open Source],
  description: list(
    [nostalgia-launcher (Python/PySide6) : updater vérifié par torrent avec profils isolés, tests et releases multi-plateformes.],
    [EcoArbiter (Rust/MQTT) : monitoring énergétique time-series – algorithme à 3 scénarios, config YAML, Docker Compose, benchmarks.],
    [Stack auto-hébergée sur OVH/Scaleway (Nextcloud, DNS/mail) + DevContainers + template Typst HEPL.],
  ),
  tags: ("Python", "Rust", "Docker", "Data"),
)
