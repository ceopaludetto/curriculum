#let language = "pt"

#set text(font: "Roboto", lang: language)
#set page(paper: "a4", margin: 1.5cm)
#set par(justify: true, leading: 0.7em)
#set list(marker: ([•], [--]))

#show heading.where(level: 2): set block(below: 1em)

#let strings = json("./locales/" + language + ".json")

#stack(dir: ltr, spacing: 6pt,
	[
		= #strings.name
		#strings.position #sym.dash.em #strings.city #sym.dash.em #strings.email #sym.dash.em #strings.phone
	],
	[#h(1fr)],
	[#link(strings.links.linkedin)[#image("./icons/linkedin.svg", width: 16pt, alt: "LinkedIn logo")]],
	[#link(strings.links.github)[#image("./icons/github.svg", width: 16pt, alt: "GitHub logo")]]
)

#line(stroke: 0.5pt + rgb("#ddd"), length: 100%)

#set align(center)

TypeScript #sym.dot.op JavaScript #sym.dot.op Node.js #sym.dot.op React #sym.dot.op NextJS #sym.dot.op Remix #sym.dot.op Redux #sym.dot.op HTML #sym.dot.op CSS #sym.dot.op Kotlin #sym.dot.op Java #sym.dot.op Spring #sym.dot.op Git #sym.dot.op PostgreSQL
MongoDB #sym.dot.op Docker #sym.dot.op AWS #sym.dot.op Cloudflare Workers #sym.dot.op Fly #sym.dot.op Agile #sym.dot.op Scrum #sym.dot.op Kanban #sym.dot.op Code Review #sym.dot.op TDD #sym.dot.op BDD #sym.dot.op CI/CD #sym.dot.op REST 
GraphQL #sym.dot.op Microservices #sym.dot.op Swift #sym.dot.op SwiftUI

#set align(left)

== #strings.summary.title

#strings.summary.content

== #strings.work.title

#for (company, position, start, end, notes) in strings.work.content [ 
	- *#company #sym.dash.em #position, #start #sym.dash.en #end*
		#for value in notes [
			- #value
		]
]

== #strings.education.title

#for (course, institution, start, end, notes) in strings.education.content [ 
	- #course #sym.dash.em #institution, #start #sym.dash.en #end
		#for value in notes [
			- #value
		]
]

== #strings.languages.title

#for (name, level) in strings.languages.content [ 
	- #name #sym.dash.em #level
]

#line(stroke: 0.5pt + rgb("#ddd"), length: 100%)

#set align(center)
#show link: underline

#link(strings.links.curriculum)[#strings.footer]

#strings.common.lastUpdate #sym.dash.en #datetime.today().display(strings.common.date)
