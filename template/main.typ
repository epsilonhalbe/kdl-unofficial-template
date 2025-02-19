#import "./typ/pageref.typ": *
#import "./typ/skills.typ": *
#import "./typ/style.typ": *
#import "./typ/trackers.typ": *

#let template(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 1.5cm,
      inside: 1cm,
      outside: 2.0cm,
      bottom: 1.75cm
    ),
    footer-descent: 1cm,
    footer: context(
      place(
        center + horizon,
        dy: -0.4cm,
        dx: if calc.even(here().page()) { -10.3cm } else { 10.3cm },
        block(width: 1.5cm, height: 1.5cm,
        align(center + horizon,
        text(
            font: fonts.title,
            fill: colors.secondary,
            size: 32pt,
            counter(page).display(),
            )
          )
        )
      )
    ),
    background:
    if not pf {
      context(
        if here().page() == 1 {
          image("img/bg_title.jpg")
        } else if calc.even(here().page()) {
          image("img/bg_left.jpg")
        } else {
          image("img/bg_right.jpg")
        })
      }
  )

  #set par(justify: true)
  #set text(size: 9pt, font: fonts.normal)
  #set list(indent: 1em)
  #set heading(numbering: "1.1")

  #show heading: it => {
    if (it.level == 1) {
      set text(
        font: fonts.title,
        fill: colors.secondary,
        size: 40pt,
      )
      if not pf {
        pagebreak(weak:true, to: "even") 
        set page(background: image("img/bg_section.jpg"))
        align(horizon, it)
        pagebreak()
      } else { it }
    }
    if (it.level == 2) {
      context[
        #set align(if (calc.even(here().page())) { left } else { right })
        #set text(
        font: fonts.title,
        fill: colors.dark.lighten(15%),
        size: 22pt,
      )
      #block(width: 100%, stroke: (bottom: colors.primary + 2pt), inset:
      (bottom: 2mm))[
        #it.body
      ]]
    }
    if (it.level == 3) {
      block(text(size: 16pt, fill: colors.primary, it.body))
    }
    if (it.level == 4) {
      block(width: 100%, stroke: (bottom: colors.secondary + 2pt),
        box(stroke: if pf { 2pt }, fill: if not pf {colors.secondary},inset: 2mm )[$suit.diamond$ #it.body]
      )
    }
  }
  #doc
]
