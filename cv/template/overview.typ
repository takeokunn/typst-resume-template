#let display_overview(overview_data) = {
  [== 業務概要]

  table(
    columns: (1.4fr, 7fr, 1.6fr),
    rows: auto,
    stroke: 0.5pt,
    inset: 6pt,
    fill: (x, y) => if y == 0 {luma(222)},
    table.header(align(center)[*期間*], align(center)[*担当業務内容*], align(center)[*言語・環境*]),
    ..for item in overview_data {(
      table.cell(
        rowspan: 2,
        align: center+horizon,
        breakable: item.at("breakable", default: false)
      )[#item.period],
      item.title,
      table.cell(rowspan: 2, align: horizon)[#item.tech_stack],
      item.content
    )}
  )
}
