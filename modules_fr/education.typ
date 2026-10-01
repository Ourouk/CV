// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry, hBar
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

// Scan du diplôme : icône "external link" Nerd Fonts (U+F08E, aussi dans Font Awesome pour la CI).
#let diploma-link = link(
  "https://github.com/Ourouk/CV/blob/main/assets/Diplome_Master_Inge.jpg",
  text(size: 1em, "\u{f08e}"),
)


#cvSection("Formation")

#cvEntry(
  title: [Master Ingénieur Industriel – Orientation Informatique #diploma-link],
  society: [Haute École de la Province de Liège #h(8pt) #entry-tags(("IoT", "IA", "DevOps", "Réseaux"))],
  date: [2023 - 2026],
  location: [Belgique],
  description: list(
    [Thèse : Pérennisation d'un projet de recherche grâce à l'open source – restructuration, CI et gouvernance collaborative (CeCoTePe, 2026).],
    [Cours : IoT #hBar() Intelligence Artificielle #hBar() Bases de données SQL/NoSQL #hBar() Réseaux (CCNA/CCNP/Sécurité/Wireless) #hBar() Génie Logiciel #hBar() Tests & Qualité Logicielle #hBar() DevOps (Docker, Kubernetes, Linux) #hBar() Big Data],
  ),
)

#cvEntry(
    title: [Bachelier en Sciences de l'Ingénieur Industriel],
  society: [Haute École de la Province de Liège #h(8pt) #entry-tags(("Mathématiques", "Mécanique", "Électronique"))],
  date: [2018 - 2023],
  location: [Belgique],
  description: list(
    [Stage : Automatisation d'infrastructure chez Nodeum – voir Expérience Professionnelle.],
    [Cours : Mathématiques #hBar() Mécanique (Cinématique, Dynamique, Fluides) #hBar() Modélisation 3D #hBar() Électricité #hBar() Électronique],
  ),
)
  #cvEntry(
  title: [Bachelier en Sciences de Gestion],
  society: [HEC Uliège #h(8pt) #entry-tags(("Finance de base", "Comptabilité"))],
  date: [2016 - 2018],
  location: [Belgique],
  description: list(
    [Bases en comptabilité, économie, gestion d'équipe – réorientation vers l'ingénierie.],
  ),
)
