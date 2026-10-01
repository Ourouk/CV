// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry, hBar
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

// Diploma scan: Nerd Fonts "external link" icon (U+F08E, also in Font Awesome for CI).
#let diploma-link = link(
  "https://github.com/Ourouk/CV/blob/main/assets/Diplome_Master_Inge.jpg",
  text(size: 1em, "\u{f08e}"),
)


#cvSection("Education")

#cvEntry(
  title: [Master's in Industrial Engineering – Computer Science Orientation #diploma-link],
  society: [Haute École de la Province de Liège #h(8pt) #entry-tags(("IoT", "AI", "DevOps", "Networks"))],
  date: [2023 - 2026],
  location: [Belgium],
  description: list(
    [Thesis: Sustaining a research project through open source – refactoring, CI and collaborative governance (CeCoTePe, 2026).],
    [Courses: IoT #hBar() Artificial Intelligence #hBar() SQL/NoSQL Databases #hBar() Networks (CCNA/CCNP/Security/Wireless) #hBar() Software Engineering #hBar() Software Testing & Quality #hBar() DevOps (Docker, Kubernetes, Linux) #hBar() Big Data],
  ),
)

#cvEntry(
    title: [Bachelor's in Industrial Engineering Sciences],
  society: [Haute École de la Province de Liège #h(8pt) #entry-tags(("Mathematics", "Mechanics", "Electronics"))],
  date: [2018 - 2023],
  location: [Belgium],
  description: list(
    [Internship: Infrastructure automation at Nodeum – see Professional Experience.],
    [Courses: Mathematics #hBar() Mechanics (Kinematics, Dynamics, Fluids) #hBar() 3D Modeling #hBar() Electricity #hBar() Electronics],
  ),
)

#cvEntry(
  title: [Bachelor's in Management Sciences],
  society: [HEC ULiège #h(8pt) #entry-tags(("Basic Finance", "Accounting"))],
  date: [2016 - 2018],
  location: [Belgium],
  description: list(
    [Foundation in accounting, economics, team management – reoriented to engineering.],
  ),
)
