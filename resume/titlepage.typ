// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#import "../lib/meta.typ": meta

#let titlepage(
  title: none,
  subtitle:none,
  author: none,
  date: none, // 日付
  year: none, // 年度
  teacher: none, // 指導教員
  univ_name: none, // 大学名および学部学科名
  size: "a4",
  body,
) = {
  // Set the document's basic properties.
  set document(author: author, title: title)
  set text(font: "Noto Sans CJK JP", lang: "ja",size: 11pt)
  set heading(numbering: "1.1")
  set align(center)
  set page(

    margin: (left: 25mm, right: 25mm, top: 30mm, bottom: 30mm),
    number-align: center,
)

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  // v(1.2fr)
  // if logo != none {
  //   align(right, image(logo, width: 26%))
  // }
  // v(1.2fr)

  // text(1.1em, date)
  v(4em)

  text(1em, weight: 360, year)

  v(1em)

  text(1em,weight: 360, "卒業論文")

  v(1em)

  text(1.8em, weight: 400, title)

  v(20em)

  text(1.8em, weight: 360, author)

  v(1.2em)

  text(1em, weight: 360, teacher)

  v(1em)

  text(1em, weight: 360, date)

  v(1em)

  text(1em, weight: 360, univ_name)

  v(3em)



  // pad(
  //   top: 0.7em,
  //   bottom: 0.7em,
  //   right: 50%,
  //   grid(
  //     columns: (1fr,) * calc.min(3, authors.len()),
  //     gutter: 1em,
  //     ..authors.map(author => align(center)[
  //       *#author.name* \
  //       #author.email
  //     ]),
  //   ),
  // )

  pagebreak()


  // Main body.
  set par(justify: true)

  body
}