# KULT: Divinity Lost unofficial scenario template

This is a typst template for the horror tabletop RPG 'KULT: Divinity Lost'.
It has been designed based on the LaTeX scenario template for Ryan Northcott's memorial scenarios.
The scenario is made for A4 paper and uses the [Mathison](https://www.dafontfree.io/mathison-typeface/) and the [Ubuntu Sans](https://github.com/canonical/Ubuntu-Sans-fonts/releases) font.

The printer friendly version can be compiled with `typst compile  my-scenario.typ --inputs printer-friendly=true`

This package provides a template and a few functions, see the example section for more details:

## Basic usage

```typst
#import "preview/kdl-unofficial-template" as kdl

#show kdl.template(title: "The Title", author: "the Author", version: "0.1.0") // all of these are optional and will be blank if omitted
```

## extra functionality and customization

```
skills()
move()
wounds()
stabilty()
attrs
```
