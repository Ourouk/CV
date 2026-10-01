// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Compétences")

#cvSkill(
  type: [Langues],
  info: [Français (Natif) #hBar() #link("https://github.com/Ourouk/CV/blob/main/assets/certification_anglais.jpg")[Anglais (C1 – Certifié, Altissia 2025)]],
)

#cvSkill(
  type: [Programmation],
  info: [Python #hBar() Java #hBar() C\# #hBar() C/C++ #hBar() Rust #hBar() OpenCV #hBar() Flask avec OpenAPI],
)

#cvSkill(
  type: [IA & Algorithmes],
  info: [Perceptron mono/multicouche #hBar() Algorithmes génétiques #hBar() NEAT (NeuroEvolution of Augmenting Topologies)],
)

#cvSkill(
  type: [DevOps & Cloud],
  info: [GitHub Actions #hBar() Docker #hBar() Docker Compose #hBar() Kubernetes #hBar() Ansible #hBar() Linux],
)

#cvSkill(
  type: [Cloud & Identité],
  info: [OVH #hBar() Scaleway #hBar() AWS (Cloud Foundations & Architecting) #hBar() Keycloak #hBar() HashiCorp Vault #hBar() Prometheus],
)

#cvSkill(
  type: [IoT & Hardware],
  info: [Modélisation 3D #hBar() Arduino #hBar() MicroPython #hBar() Protocoles I2S/UART #hBar() LoRa #hBar() Raspberry Pi],
)

#cvSkill(
  type: [Réseaux],
  info: [TCP/IP #hBar() MQTT #hBar() Routeurs Cisco #hBar() Gestion de la sécurité réseau],
)
