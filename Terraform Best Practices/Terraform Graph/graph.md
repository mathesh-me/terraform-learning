## Terraform Graph

The `terraform graph` command is used to generate a visual representation of either a configuration or execution plan. The output is in the DOT format, which can be used by [GraphViz](https://www.graphviz.org/) to generate charts.

### Usage
Usage: `terraform graph [options]`

Outputs the visual execution graph of Terraform resources according to either the current configuration or an execution plan.

The graph is outputted in DOT format. The typical program that can read this format is GraphViz.

### Generating Images
The output of terraform graph is in the DOT format, which can easily be converted to an image by making use of dot provided by GraphViz:

```bash
$ terraform graph | dot -Tsvg > graph.svg
```