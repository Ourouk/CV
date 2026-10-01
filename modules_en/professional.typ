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


#cvSection("Professional Experience")

#cvEntry(
  title: [Master Thesis – Platform / DevOps],
  society: [CeCoTePe #h(8pt) #entry-tags(("CI/CD", "Docker", "Keycloak"))],
  date: [2025 - 2026],
  location: [Seraing, BE],
  description: list(
    [Sustaining a research project through open source: refactoring, CI and collaborative governance.],
    [CI/CD with GitHub Actions, Dockerized build, tests, CodeQL/Cosign; monorepo + DevContainers; Compose vs K8s + Keycloak contributions.],
  ),
)

#cvEntry(
  title: [Infrastructure Automation Intern],
  society: [Nodeum #h(8pt) #entry-tags(("Ansible", "HashiCorp Vault", "Prometheus"))],
  date: [2022 - 2023],
  location: [Liège, BE],
  description: list(
    [Secured SSH distribution with HashiCorp Vault + Ansible automation.],
    [Refactored web panel and integrated Prometheus time-series monitoring.],
  ),
)

#cvEntry(
  title: [Student Jobs – IT & Service],
  society: [Various employers #h(8pt) #entry-tags(("OVH", "WordPress", "Self-Hosted", "Static Website"))],
  date: [2014 - 2026],
  location: [Liège, BE],
  description: list(
    [Cloud takeover for a small company on OVH: replaced unmaintained legacy infrastructure with a static website and open-source internal tools (DNS, mail, self-hosted services); WordPress cloud, PC build/repair.],
  ),
)
