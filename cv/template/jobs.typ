#let display_jobs(jobs_data) = {
  [== 業務詳細]

  table(
    columns: (0.8fr, 1.3fr, 0.5fr, 2fr, 1fr),
    rows: auto,
    stroke: 0.5pt,
    inset: 6pt,
    ..for work in jobs_data {(
      table.cell(fill: luma(222))[プロジェクト],
      table.cell(colspan: 4, fill: luma(222))[
        #text(weight: 700, work.title)
      ],
      table.cell(fill: luma(222))[概要],
      [
        #table(
          columns: (auto, 1fr),
          rows: auto,
          stroke: 0pt,
          inset: 0.3em,
          [【業種】],
          [#work.workdetail.kind],
          [【役割】],
          [#work.workdetail.type],
          [【規模】],
          [#work.workdetail.size]
        )
      ],
      table.cell(fill: luma(222))[期間],
      table.cell(colspan: 2)[
        #work.period.from ～ #work.period.to (#work.period.span)
        #linebreak()
        #work.at("memo", default: "")
      ],
      table.cell(fill: luma(222))[担当業務内容],
      table.cell(colspan: 3)[
        #work.content
      ],
      table.cell(rowspan: 1)[
        【言語・FW】
        #v(0.2em)
        #work.lang-othor
        #v(1em)
        #line(stroke: 0.2pt, length: 100%)
        【ツール・環境】
        #v(0.2em)
        #work.use-soft
      ],
    )}
  )
}
