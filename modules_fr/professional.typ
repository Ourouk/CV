// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Expérience Professionnelle")

#cvEntry(
  title: [Mémoire de Master – Plateforme / DevOps],
  society: [CeCoTePe – Seraing],
  date: [2025 - 2026],
  location: [Seraing, BE],
  description: list(
    [Pérennisation d'un projet de recherche via l'open source : restructuration, CI et gouvernance collaborative.],
    [CI/CD avec GitHub Actions, build dockerisé, tests, CodeQL/Cosign ; monorepo + DevContainers ; Compose vs K8s + contributions Keycloak.],
  ),
  tags: ("CI/CD", "Docker", "Keycloak"),
)

#cvEntry(
  title: [Stagiaire Automatisation Infrastructure],
  society: [Nodeum],
  date: [2022 - 2023],
  location: [Liège, BE],
  description: list(
    [Sécurisation SSH avec HashiCorp Vault + automatisation Ansible.],
    [Refactoring panneau web et monitoring Prometheus time-series.],
  ),
  tags: ("Ansible", "Vault", "Prometheus"),
)

#cvEntry(
  title: [Jobs Étudiants – IT & Services],
  society: [Employeurs divers],
  date: [2014 - 2026],
  location: [Liège, BE],
  description: list(
    [Reprise cloud d'une PME sur OVH (DNS, mail, auto-hébergé) ; WordPress cloud, montage PC.],
  ),
  tags: ("OVH", "DNS", "Mail"),
)
