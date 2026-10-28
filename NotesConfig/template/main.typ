#import "@local/notes-template:0.1.0": template
#import "preamble.typ": *

#show: template.with(
  title: "Your Document Title", 
  subtitle: "Optional Subtitle",
  author: "Your Name",
  date: datetime.today()
)

= Introduction
