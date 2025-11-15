#import "src/lib.typ": *

// hallon is an optional library for subfigures.
#import "@preview/hallon:0.1.2": subfigure
// cellpress is an optional library for Cell Press table style.
#import "@preview/cellpress-unofficial:0.1.0" as cellpress: toprule, midrule, bottomrule
// smartaref is an optional library for handling consecutive references.
#import "@preview/smartaref:0.1.0": cref, Cref

#show: template.with(
	logo:              image("src/img/logo_sigillo.svg"),
	title:             "Laboratorio di Sistemi Operativi",
	subtitle:          "Come funziona un SO",
	page-header-title: "Lab 1",
	course-name:       "Sistemi Operativi",
	course-code:       "AA1234",
	authors:           "Mario Rossi",
	lab-date:          datetime.today().display(),
	lang:              "it",
)

#show: cellpress.style-table

#quote(
	block: true,
	attribution: [anonymous],
)[
	#emph["Chemistry is all around us."]
]

= Introduction

#lorem(35)

#pagebreak(weak: true)

#bibliography("src/references.yaml")

#pagebreak(weak: true)
