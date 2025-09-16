#import "@local/notes-template:0.1.0": template
#import "preamble.typ": *
#import "@preview/ctheorems:1.1.3": *
#import "@preview/showybox:2.0.1": showybox

#show: template.with(
  title: "Your Document Title", 
  subtitle: "Optional Subtitle",
  author: "Your Name",
  date: datetime.today()
)

= Introduction
