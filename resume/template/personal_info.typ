#import "layout.typ": systemFontSize, nameFontSize, inputFontSize, addSpace

#let personal_details_block(profile) = {
  stack(
    rect(
      stroke: (
        bottom: none,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #grid(
          columns: (1.5cm, 4cm, 1fr),
          [ふりがな],
          [#align(center, profile.性読み)],
          [#align(start, profile.名読み)]
        )
      ]
    ),
    line(
      length: 100%,
      stroke: (
        dash:"dashed",
      )
    ),
    rect(
      stroke: (
        bottom: 0.5pt,
        top: none,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #align(
          top,
          grid(
            columns: (1.5cm, 4cm, 1fr),
            [氏 #h(0.6cm)名],
            [
              #pad(y: 0.4cm,align(center + horizon,text(nameFontSize, profile.性)))
            ],
            [
              #pad(y: 0.4cm,align(start + horizon,text(nameFontSize, profile.名)))
            ]

          )
        )
      ]
    ),
    rect(
      stroke: (
        bottom: 0.5pt,
        top: none,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: auto,
      width: 100%,
      [
        #align(
          start + top,
          grid(
            columns: (1.5cm, 1fr),
            [生年月日],
            pad(y: 0.2cm, [#addSpace(text(inputFontSize, [#profile.生年月日 生 #h(0.6cm) (満 #h(0.5em) #profile.満年齢 才)]))])
          )
        )
      ]
    )
  )
}

#let photo_block(profile) = {
  set text(size: 7pt)
  pad(
    bottom: 0.3cm,
    left: 0.4cm,
    box(
      stroke: (
        dash:"dashed",
      ),
      height: 4cm,
      width: 3cm,
      [
        #if (profile.写真 == ""){
          align(
            center + horizon,
            [
              写真を貼る位置\
              (縦 40mm, 横 30mm)
            ]
          )
        } else {
          image(profile.写真, width: 3cm, height: 4cm)
        }
      ]
    )
  )
}
