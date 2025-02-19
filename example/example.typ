#import "/template/main.typ" as kdl

#show: kdl.template

#kdl.pages.title.with(
  title: "A tall tale",
  author: "Baron von Münchhausen",
  size: 64pt // optional
)()

#kdl.pages.blank
#kdl.pages.blank

#include("./chapters/01-intro.typ")
#kdl.pages.toc
#include("./chapters/02-pre-gen.typ")

#bibliography("/template/bibliography.bib", full: true, style: "pensoft")
