#import "@preview/ctheorems:1.1.3": *
#import "@preview/showybox:2.0.1": showybox

#let notes-template(
  title: "Document Title",
  subtitle: none,
  author: "Your Name",
  date: datetime.today(),
  body
) = {
  set document(title: title, author: author)
  set page(numbering: "1")
  set text(font: "Hack Nerd Font", size: 11pt)
  set heading(numbering: "1.1")
  
  show heading.where(level: 1): it => {
    pagebreak()
    it
  }
  
  show: thmrules
  
  align(center)[
    #text(size: 20pt, weight: "bold")[#title]
    
    #if subtitle != none [
      #v(1cm)
      #text(size: 14pt)[#subtitle]
    ]
    
    #v(2cm)
    #text(size: 12pt)[#author]
    #v(0.5cm)
    #date.display()
  ]
  
  pagebreak()
  outline(title: "Table of Contents", depth: 3)
  pagebreak()
  
  body
}

#let template = notes-template
