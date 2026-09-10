// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Formation")

#cvEntry(
  title: [Master Ingénieur Industriel – Orientation Informatique],
  society: [Haute École de la Province de Liège],
  date: [2023 - 2026],
  location: [Belgique],
  description: list(
    [Thèse : Pérennisation d'un projet de recherche grâce à l'open source – restructuration, CI et gouvernance collaborative (CeCoTePe, 2026).],
    [Cours : IoT #hBar() Intelligence Artificielle #hBar() Bases de données SQL/NoSQL #hBar() Réseaux (CCNA/CCNP/Sécurité/Wireless) #hBar() Génie Logiciel #hBar() Tests & Qualité Logicielle #hBar() DevOps (Docker, Kubernetes, Linux) #hBar() Big Data],
  ),
)

#cvEntry(
    title: [Bachelier en Sciences de l'Ingénieur Industriel],
  society: [Haute École de la Province de Liège],
  date: [2018 - 2023],
  location: [Belgique],
  description: list(
    [Stage : Automatisation d'infrastructure chez Nodeum – voir Expérience Professionnelle.],
    [Cours : Mathématiques #hBar() Mécanique (Cinématique, Dynamique, Fluides) #hBar() Modélisation 3D #hBar() Électricité #hBar() Électronique],
  ),
)
  #cvEntry(
  title: [Bachelier en Science de Gestion],
  society: [Hec Uliège],
  date: [2016-2018],
  location: [Belgique],
  description: list(
    [Bases en comptabilité, économie, gestion d'équipe – réorientation vers l'ingénierie.],
  ),
)
