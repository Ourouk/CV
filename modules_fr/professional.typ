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


#cvSection("Expérience Professionnelle")

#cvEntry(
  title: [Mémoire de Master – Plateforme / DevOps],
  society: [CeCoTePe #h(8pt) #entry-tags(("CI/CD", "Docker", "Keycloak"))],
  date: [2025 - 2026],
  location: [Seraing, BE],
  description: list(
    [Pérennisation d'un projet de recherche via l'open source : restructuration, CI et gouvernance collaborative.],
    [CI/CD avec GitHub Actions, build dockerisé, tests, CodeQL/Cosign ; monorepo + DevContainers ; Compose vs K8s + contributions Keycloak.],
  ),
)

#cvEntry(
  title: [Stagiaire Automatisation Infrastructure],
  society: [Nodeum #h(8pt) #entry-tags(("Ansible", "HashiCorp Vault", "Prometheus"))],
  date: [2022 - 2023],
  location: [Liège, BE],
  description: list(
    [Sécurisation SSH avec HashiCorp Vault + automatisation Ansible.],
    [Refactoring panneau web et monitoring Prometheus time-series.],
  ),
)

#cvEntry(
  title: [Jobs Étudiants – IT & Services],
  society: [Employeurs divers #h(8pt) #entry-tags(("OVH", "WordPress", "Auto-hébergé", "Site statique"))],
  date: [2014 - 2026],
  location: [Liège, BE],
  description: list(
    [Reprise cloud d'une PME sur OVH : infrastructure legacy non maintenue remplacée par un site statique et des outils internes open source (DNS, mail, auto-hébergé) ; WordPress cloud, montage PC.],
  ),
)
