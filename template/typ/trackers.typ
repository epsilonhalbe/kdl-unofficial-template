#import "./skills.typ": attrs

#let stability = block(breakable: false)[
  #let numberbox(number) = box(height: 2.95mm, width: 2.95mm, inset: 0.8mm, stroke: 0.4pt, text(size: 6pt, [#number]))
  #table(
    inset: 0% + 4pt,
    stroke: (x,y) => 
     if (0,2,5,9).contains(y) { (bottom: black + 1pt) },
    columns: (5mm, 20mm, 100% - 25mm),
    align: (x,y) => 
      if x == 2 {
        if (1,3,6).contains(y){ right } else { left}
      } else {
        (center)
      },
    numberbox([10]),[Composed],[],
    numberbox([ 9]),[Uneasy],[*Moderate Stress*],
    numberbox([ 8]),[Unfocused],emph[-1 to #attrs.dis.move rolls],
    numberbox([ 7]),[Shaken],[*Serious Stress*],
    numberbox([ 6]),[Distressed],emph[-1 to #attrs.will.move rolls],
    numberbox([ 5]),[Neurotic],emph[-2 to #attrs.dis.move rolls],
    numberbox([ 4]),[Anxious],[*Critical Stress*],
    numberbox([ 3]),[Irrational],emph[-2 to #attrs.will.move rolls],
    numberbox([ 2]),[Frantic],emph[-3 to #attrs.dis.move rolls],
    numberbox([ 1]),[Unhinged],emph[+1 to #attrs.soul.move rolls],
    numberbox([ 0]),[Broken],emph[The GM makes a Move],
)]

#let wounds = block(breakable: false)[
  #table(
    inset: 0% + 4pt,
    stroke: (x,y) => if ((0,5).contains(y) or x == 0) { (bottom: black + 1pt)},
    align: (left, center),
    columns: (100% - 20mm, 17mm),
    row-gutter: 1mm,
    [*Serious Wound* (-1 ongoing)],[Stabilized],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [],[$square.stroked.big$],
    [*Moderate Stress* (-1 ongoing)],[],
    [],[$square.stroked.big$],
)]

