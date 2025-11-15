#import "src/lib.typ": *

// hallon is an optional library for subfigures.
#import "@preview/hallon:0.1.2": subfigure
// cellpress is an optional library for Cell Press table style.
#import "@preview/cellpress-unofficial:0.1.0" as cellpress: toprule, midrule, bottomrule
// smartaref is an optional library for handling consecutive references.
#import "@preview/smartaref:0.1.0": cref, Cref

#show: template.with(
	logo:              image("src/img/logo_sigillo.svg"),
	title:             "Lab 1 -- Stem Cells",
	subtitle:          "An investigation into the effects of morphogens on differentiation",
	page-header-title: "Lab 1",
	course-name:       "Course Name",
	course-code:       "AA1234",
	authors:           "Jane Rue",
	lab-date:          datetime.today().display(),
	lang:              "it",
)

#show: cellpress.style-table

// === [ quote ] ===============================================================

#quote(
	block: true,
	attribution: [anonymous],
)[
	#emph["Chemistry is all around us."]
]

// === [ Introduction ] ========================================================

= Introduction

#lorem(35)

== Purpose

#lorem(10)

== Theory

#lorem(10)

#pagebreak(weak: true)

// === [ Methods ] =============================================================

= Methods

#lorem(10)

#pagebreak(weak: true)

// === [ Results ] =============================================================

= Results

#lorem(10)

As seen in #cref[@subfig-foo @subfig-bar] ...

#figure(
	grid(
		columns: 2,
		gutter: 1em,
		subfigure(
			rect(fill: aqua), // image("/inc/foo.png"),
			caption: lorem(3),
			label: <subfig-foo>
		),
		subfigure(
			rect(fill: teal), // image("/inc/bar.png"),
			caption: lorem(3),
			label: <subfig-bar>
		),
	),
	gap: 1em,
	caption: lorem(5),
) <fig-baz>

The results of the experiment are presented in @tbl-bar ...

#figure(
	caption: lorem(5),
	table(
		columns: 3,
		toprule(),
		table.header[*foo*][*bar*][*baz*],
		midrule(),
		[a], [b], [c],
		[a], [b], [c],
		[a], [b], [c],
		bottomrule(),
	),
) <tbl-bar>

#pagebreak(weak: true)

// === [ Discussion ] ==========================================================

= Discussion

#lorem(10)

#pagebreak(weak: true)

// === [ Bibliography ] ========================================================

#bibliography("src/references.yaml")

#pagebreak(weak: true)
