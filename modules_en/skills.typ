// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Skills")

#cvSkill(
  type: [Languages],
  info: [French (Native) #hBar() #link("https://github.com/Ourouk/CV/blob/main/assets/certification_anglais.jpg")[English (C1 – Certified, Altissia 2025)]],
)

#cvSkill(
  type: [Programming],
  info: [Python #hBar() Java #hBar() C\# #hBar() C/C++ #hBar() Rust #hBar() OpenCV #hBar() Flask with OpenAPI],
)

#cvSkill(
  type: [AI & Algorithms],
  info: [Single-layer/multilayer Perceptron #hBar() Genetic Algorithms #hBar() NEAT (NeuroEvolution of Augmenting Topologies)],
)

#cvSkill(
  type: [DevOps & Cloud],
  info: [GitHub Actions #hBar() Docker #hBar() Docker Compose #hBar() Kubernetes #hBar() Ansible #hBar() Linux],
)

#cvSkill(
  type: [Cloud & Identity],
  info: [OVH #hBar() Scaleway #hBar() AWS (Cloud Foundations & Architecting) #hBar() Keycloak #hBar() HashiCorp Vault #hBar() Prometheus],
)

#cvSkill(
  type: [IoT & Hardware],
  info: [3D Modeling #hBar() Arduino #hBar() MicroPython #hBar() I2S/UART Protocols #hBar() LoRa #hBar() Raspberry Pi],
)

#cvSkill(
  type: [Networks],
  info: [TCP/IP #hBar() MQTT #hBar() Cisco Routers #hBar() Network Security Management],
)
