// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Professional Experience")

#cvEntry(
  title: [Master Thesis – Platform / DevOps],
  society: [CeCoTePe – Seraing],
  date: [2025 - 2026],
  location: [Seraing, BE],
  description: list(
    [Sustaining a research project through open source: refactoring, CI and collaborative governance.],
    [CI/CD with GitHub Actions, Dockerized build, tests, CodeQL/Cosign; monorepo + DevContainers; Compose vs K8s + Keycloak contributions.],
  ),
  tags: ("CI/CD", "Docker", "Keycloak"),
)

#cvEntry(
  title: [Infrastructure Automation Intern],
  society: [Nodeum],
  date: [2022 - 2023],
  location: [Liège, BE],
  description: list(
    [Secured SSH distribution with HashiCorp Vault + Ansible automation.],
    [Refactored web panel and integrated Prometheus time-series monitoring.],
  ),
  tags: ("Ansible", "Vault", "Prometheus"),
)

#cvEntry(
  title: [Student Jobs – IT & Service],
  society: [Various employers],
  date: [2014 - 2026],
  location: [Liège, BE],
  description: list(
    [Cloud takeover for a small company on OVH (DNS, mail, self-hosted services); WordPress cloud, PC build/repair.],
  ),
  tags: ("OVH", "DNS", "Mail"),
)
