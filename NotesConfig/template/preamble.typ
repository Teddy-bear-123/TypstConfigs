#import "@local/notes-template:0.1.0": template

#import "@preview/ctheorems:1.1.3": *
#import "@preview/showybox:2.0.1": showybox

#let dfn = thmbox("definition", "Definition", fill: rgb("#e7f3ff"))
#let exm = thmbox("example", "Example", fill: rgb("#f0f8f0"))
#let nt = thmbox("note", "Note", fill: rgb("#fff8e7"))
#let thm = thmbox("theorem", "Theorem", fill: rgb("#ffe7e7"))
#let lem = thmbox("lemma", "Lemma", fill: rgb("#f5e7ff"))
#let cor = thmbox("corollary", "Corollary", fill: rgb("#e7ffe7"))

#let tip = thmbox("Tip", "Tip", fill: red.lighten(90%))
#let tip = thmbox("Tip", "Tip", fill: red.lighten(90%))
#let warning = thmbox("Warning", "Warning", fill: orange.lighten(90%))
#let important = thmbox("Important", "Important", fill: red.lighten(90%))
#let question = thmbox("Question", "Question", fill: purple.lighten(90%))

#let code(body) = {
  rect(
    fill: rgb("#f5f5f5"),
    stroke: rgb("#d0d0d0"),
    inset: 8pt,
    radius: 3pt,
    let content = if type(body) == str { body } else { repr(body) },
    raw(content, lang: none),
  )
}

#let ic(body) = {
  box(
    fill: rgb("#f0f0f0"),
    inset: (x: 3pt, y: 1pt),
    radius: 2pt,
    raw(body),
  )
}

