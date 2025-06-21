#import "layout.typ": inputFontSize

#let education_entry_block(entry) = {
  block(
    width: 100%,
    inset: (top: 0.26cm, bottom: 0.26cm),
    stroke: (bottom: (paint: gray, thickness: 0.5pt)),
    grid(
      columns: (1.5cm, 0.8cm, 1fr),
      [#align(center, entry.年)],
      [#align(center, entry.月)],
      [#align(start + horizon, [#h(5pt)#entry.学歴])]
    )
  )
}

#let work_entry_block(entry) = {
  block(
    width: 100%,
    inset: (top: 0.26cm, bottom: 0.26cm),
    stroke: (bottom: (paint: gray, thickness: 0.5pt)),
    grid(
      columns: (1.5cm, 0.8cm, 1fr),
      [#align(center, entry.年)],
      [#align(center, entry.月)],
      [#align(start + horizon, [#h(5pt)#entry.職歴])]
    )
  )
}

#let certification_entry_block(entry) = {
  block(
    width: 100%,
    inset: (top: 0.26cm, bottom: 0.26cm),
    stroke: (bottom: (paint: gray, thickness: 0.5pt)),
    grid(
      columns: (1.5cm, 0.8cm, 1fr),
      [#align(center, entry.年)],
      [#align(center, entry.月)],
      [#align(start + horizon, [#h(5pt)#entry.資格])]
    )
  )
}

#let end_marker_block() = {
  block(
    width: 100%,
    inset: (top: 0.26cm, bottom: 0.26cm),
    grid(
      columns: (1.5cm, 0.8cm, 1fr),
      [],
      [],
      [#align(end + horizon, [以上#h(2cm)])]
    )
  )
}

#let history_section_block(children, hegithLength: 12.6cm, mode:"") = {
  stack(
    box(
      stroke: (
        bottom: 1.5pt,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: hegithLength,
      width: 100%,
      [
        #box(
          width: 100%,
          grid(
            columns: (1.5cm, 0.8cm, 1fr),
            [
              #rect(
                stroke: (
                  bottom: none,
                  top: none,
                  left: none,
                  right: 0.5pt
                ),
                height: 100%,
                width: 100%,
                inset: (top: 0.26cm, bottom: 0.26cm),
                [#align(center, [年])]
              )
            ],
            [
              #rect(
                stroke: (
                  bottom: none,
                  top: none,
                  left: none,
                  right: 0.5pt
                ),
                height: 100%,
                width: 100%,
                inset: (top: 0.26cm, bottom: 0.26cm),
                [#align(center, [月])]
              )
            ],
            [
              #rect(
                width: 100%,
                height: 100%,
                stroke: (
                  bottom: none,
                  top: none,
                  left: none,
                  right: none,
                ),
                inset: (top: 0.26cm, bottom: 0.26cm),
                align(center, [#mode])
              )
            ]
          )
        )
        #place(top + left, dy: 0.92cm, children)
      ]
    ),
  )
}
