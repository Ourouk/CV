// Imports
#import "@preview/brilliant-cv:2.0.4": cvSection, cvSkill, hBar
#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)


#cvSection("Skills")

#cvSkill(
   type: [Languages],
  info: [French (C2 - Native) #hBar() English (C1 - Fluent)],
)

#cvSkill(
  type: [Programming],
  info: [Python #hBar() Java #hBar() C\# #hBar() C/C++ #hBar() Bash/Shell #hBar() Rust],
)

#cvSkill(
  type: [Libraries],
  info: [OpenCV #hBar() Flask with OpenAPI],
)

#cvSkill(
  type: [AI & Algorithms],
  info: [Single/multilayer Perceptron #hBar() Genetic Algorithms #hBar() NEAT (NeuroEvolution of Augmenting Topologies)],
)

#cvSkill(
  type: [DevOps & Cloud],
  info: [Git #hBar() GitHub Actions #hBar() Docker #hBar() Docker Compose #hBar() Kubernetes #hBar() Ansible #hBar() DevContainers],
)

#cvSkill(
  type: [Cloud & Identity],
  info: [OVH #hBar() Scaleway #hBar() AWS (coursework) #hBar() Keycloak #hBar() Vault #hBar() Prometheus #hBar() MQTT],
)

#cvSkill(
  type: [IoT & Hardware],
  info: [3D Modeling #hBar() Arduino #hBar() MicroPython #hBar() I2S/UART Protocols #hBar() LoRa #hBar() Raspberry Pi (RPI)],
)

#cvSkill(
  type: [Systems & Linux],
  info: [Deployment and maintenance on Debian, RHEL & Alpine],
)

#cvSkill(
  type: [Networks],
  info: [TCP/IP #hBar() DNS Administration #hBar() Mail Hosting #hBar() Cisco Routers #hBar() Network Security Management],
)
