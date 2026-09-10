// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvEntry, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)


#cvSection("Education")

#cvEntry(
  title: [Master's in Industrial Engineering – Computer Science Orientation],
  society: [Haute École de la Province de Liège],
  date: [2023 - 2026],
  location: [Belgium],
  description: list(
    [Thesis: Sustaining a research project through open source – refactoring, CI and collaborative governance (CeCoTePe, 2026).],
    [Courses: IoT #hBar() Artificial Intelligence #hBar() SQL/NoSQL Databases #hBar() Networks (CCNA/CCNP/Security/Wireless) #hBar() Software Engineering #hBar() Software Testing & Quality #hBar() DevOps (Docker, Kubernetes, Linux) #hBar() Big Data],
  ),
)

#cvEntry(
    title: [Bachelor's in Industrial Engineering Sciences],
  society: [Haute École de la Province de Liège],
  date: [2018 - 2023],
  location: [Belgium],
  description: list(
    [Internship: Infrastructure automation at Nodeum – see Professional Experience.],
    [Courses: Mathematics #hBar() Mechanics (Kinematics, Dynamics, Fluids) #hBar() 3D Modeling #hBar() Electricity #hBar() Electronics],
  ),
)

#cvEntry(
  title: [Bachelor's in Management Sciences],
  society: [HEC ULiège],
  date: [2016 - 2018],
  location: [Belgium],
  description: list(
    [Foundation in accounting, economics, team management – reoriented to engineering.],
  ),
)
