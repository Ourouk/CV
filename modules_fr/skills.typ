// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Compétences")

#cvSkill(
   type: [Langues],
  info: [Français (C2) #hBar() Anglais (C1)],
)

#cvSkill(
  type: [Programmation],
  info: [Python #hBar() Java #hBar() C\# #hBar() C/C++ #hBar() Bash/Shell #hBar() Rust],
)

#cvSkill(
  type: [Bibliothèques],
  info: [OpenCV #hBar() Flask avec OpenAPI],
)

#cvSkill(
  type: [IA & Algorithmes],
  info: [Perceptron mono/multicouche #hBar() Algorithmes génétiques #hBar() NEAT (NeuroEvolution of Augmenting Topologies)],
)

#cvSkill(
  type: [DevOps & Cloud],
  info: [Git #hBar() GitHub Actions #hBar() Docker #hBar() Docker Compose #hBar() Kubernetes #hBar() Ansible #hBar() DevContainers],
)

#cvSkill(
  type: [Cloud & Identité],
  info: [OVH #hBar() Scaleway #hBar() AWS (cours) #hBar() Keycloak #hBar() Vault #hBar() Prometheus #hBar() MQTT],
)

#cvSkill(
  type: [IoT & Hardware],
  info: [Modélisation 3D #hBar() Arduino #hBar() MicroPython #hBar() Protocoles I2S/UART #hBar() LoRa #hBar() Raspberry Pi (RPI)],
)

#cvSkill(
  type: [Systèmes & Linux],
  info: [Déploiement et maintenance sur Debian, RHEL & Alpine],
)

#cvSkill(
  type: [Réseaux],
  info: [TCP/IP #hBar() Administration DNS #hBar() Hébergement Mail #hBar() Routeurs Cisco #hBar() Gestion de la sécurité réseau],
)
