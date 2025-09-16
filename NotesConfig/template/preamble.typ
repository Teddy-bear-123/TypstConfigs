#import "@local/notes-template:0.1.0": template

#import "@preview/ctheorems:1.1.3": *
#import "@preview/showybox:2.0.1": showybox

#let dfn = thmbox("definition", "Definition", fill: rgb("#e7f3ff"))
#let exm = thmbox("example", "Example", fill: rgb("#f0f8f0")) 
#let nt = thmbox("note", "Note", fill: rgb("#fff8e7"))
#let thm = thmbox("theorem", "Theorem", fill: rgb("#ffe7e7"))
#let lem = thmbox("lemma", "Lemma", fill: rgb("#f5e7ff"))
#let cor = thmbox("corollary", "Corollary", fill: rgb("#e7ffe7"))

#let important(body) = {
  showybox(
    frame: (
      border-color: red,
      title-color: red.lighten(30%),
      body-color: red.lighten(90%)
    ),
    title: "Important",
    body
  )
}

#let tip(body) = {
  showybox(
    frame: (
      border-color: blue,
      title-color: blue.lighten(30%),
      body-color: blue.lighten(90%)
    ),
    title: "Tip", 
    body
  )
}

#let warning(body) = {
  showybox(
    frame: (
      border-color: orange,
      title-color: orange.lighten(30%),
      body-color: orange.lighten(90%)
    ),
    title: "Warning",
    body
  )
}

#let question(body) = {
  showybox(
    frame: (
      border-color: purple,
      title-color: purple.lighten(30%),
      body-color: purple.lighten(90%)
    ),
    title: "Question",
    body
  )
}

#let code(body) = {
  rect(
    fill: rgb("#f5f5f5"),
    stroke: rgb("#d0d0d0"),
    inset: 8pt,
    radius: 3pt,
    raw(body, lang: none)
  )
}

#let ic(body) = {
  box(
    fill: rgb("#f0f0f0"),
    inset: (x: 3pt, y: 1pt),
    radius: 2pt,
    raw(body)
  )
}

