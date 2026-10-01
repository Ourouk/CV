// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

// Tags en pastilles à côté de la société (le template affiche `tags:` sous la description).
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


#cvSection("Projets")

#cvEntry(
  title: [Projets Ingénierie & Data],
  society: [#link("https://github.com/Ourouk")[github.com/Ourouk] #h(
      8pt,
    ) #entry-tags(("Python", "Rust", "MQTT"))],
  date: [2024 - Présent],
  location: [Open Source],
  description: list(
    [nostalgia-launcher (Python/PySide6) : updater vérifié par torrent avec profils isolés, tests et releases multi-plateformes.],
    [EcoArbiter (Rust/MQTT) : monitoring énergétique time-series avec analyse de données – algorithme à 3 scénarios, config YAML, Docker Compose, benchmarks.],
    [Stack auto-hébergée sur OVH/Scaleway (Nextcloud, DNS/mail) + DevContainers + template Typst HEPL.],
  ),
)
