cwlVersion: v1.0
class: CommandLineTool
requirements:
  - class: DockerRequirement
    dockerPull: alpine:latest
baseCommand: cat
arguments: [$(inputs.file)]
inputs:
  - id: file
    type: File
outputs:
  - id: out
    type: stdout
stdout: output.txt
