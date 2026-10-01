// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvHonor
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvHonor = cvHonor.with(metadata: metadata)

// Scan du certificat : même icône "external link" Nerd Fonts que pour le diplôme (U+F08E).
#let cert-link = link(
  "https://github.com/Ourouk/CV/blob/main/assets/certification_anglais.jpg",
  text(size: 1em, "\u{f08e}"),
)


#cvSection("Certificates")

#cvHonor(
  date: [2025],
  title: [Certification d'anglais – Niveau C1 #cert-link],
  issuer: [Altissia],
)
