// Imports
#import "@preview/brilliant-cv:2.0.4": cv
#let metadata = toml("./metadata.toml")
#let importModules(modules, lang: metadata.language) = {
  for module in modules {
    include {
      "modules_" + lang + "/" + module + ".typ"
    }
  }
}


#show: cv.with(
  metadata,
  profilePhoto:image("src/logos/me.png", height: 2.8cm)
,
)
#importModules((
  "professional",
  "projects",
  "education",
  // "certificates",
  // "publications",
  "skills",
))
