cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  diverticular-disease-of-intestine-acute-and-chronic-colon---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  diverticular-disease-of-intestine-acute-and-chronic-diverticulum---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-diverticulum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-colon---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-diverticulosis---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-diverticulosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-diverticulum---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-duodenum---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-diverticulosis---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-jejunum---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-jejunum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-duodenum---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-ileum---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-ileum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-jejunum---primary/output
  small-diverticular-disease-of-intestine-acute-and-chronic---primary:
    run: small-diverticular-disease-of-intestine-acute-and-chronic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-ileum---primary/output
  large-diverticular-disease-of-intestine-acute-and-chronic---primary:
    run: large-diverticular-disease-of-intestine-acute-and-chronic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: small-diverticular-disease-of-intestine-acute-and-chronic---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-abscess---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: large-diverticular-disease-of-intestine-acute-and-chronic---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-unspecified---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-abscess---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-diverticulitis---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-diverticulitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-unspecified---primary/output
  diverticular-disease-of-intestine-acute-and-chronic---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-diverticulitis---primary/output
  diverticular-disease-of-intestine-acute-and-chronic-perforated---primary:
    run: diverticular-disease-of-intestine-acute-and-chronic-perforated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic---primary/output
  diverticular-disease-of-intestine-acute-and-chronic---secondary:
    run: diverticular-disease-of-intestine-acute-and-chronic---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic-perforated---primary/output
  excision-diverticulum-colon-diverticular-disease-of-intestine-acute-and-chronic---secondary:
    run: excision-diverticulum-colon-diverticular-disease-of-intestine-acute-and-chronic---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diverticular-disease-of-intestine-acute-and-chronic---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: excision-diverticulum-colon-diverticular-disease-of-intestine-acute-and-chronic---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
