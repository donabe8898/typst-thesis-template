#import "../resume/titlepage.typ": *

// ページ設定
#set par(leading: 1em)
#set enum(indent: 1em)
#set table(inset: 8pt)
#set heading(numbering: "1.1.")
#set ref(supplement: "式")

// 表紙
#show: titlepage.with(
  title: "ハンバーガー4個分指数に関する研究",
  author: "XDG1991L 小倉=ノルト=オグラノ",
  date: "2023 年 12 月 hoge 日",
  year:"2023 年度",
  teacher: "指導教員 菜似四天 阿呆駄羅 教授",
  univ_name: "フォーエバー大学 経済学部"
)

// ページ設定
#set math.equation(numbering: (sym.dots.h.c + " (1)"))
#set page(
    numbering: "1",
)
#set figure(
  numbering: "1",
)
#set align(left)
// NOTE: コードブロックの背景など
#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)


// 目次設定
#counter(page).update(1)
#outline(title: [目次])
// 改ページ
#pagebreak()

= これでいいのだ

#v(1em)

```textile
コードも楽々打てる。

> 楽にコードが書けるわけではないが？
```

```rs
fn main(){
  println!("Hello World");
}
```