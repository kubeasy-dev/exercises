package main

deny[msg] {
  input.kind == "Pod"
  input.metadata.name != "my-first-pod"

  msg := "Pod name must be my-first-pod"
}

deny[msg] {
  input.kind == "Pod"
  not input.spec.containers[0].image == "nginx:1.21"

  msg := "Container image must be nginx:1.21"
}