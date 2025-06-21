#import "layout.typ": systemFontSize, inputFontSize

#let address_block(address_data) = {
  stack(
    grid(
      columns: (5fr, 2fr),
      [
        #stack(
          rect(
            stroke: (
              bottom: none,
              top: none,
              left: 1.5pt,
              right: 0.5pt
            ),[
              #grid(
                columns: (1.5cm, 1fr),
                [ふりがな],
                [#align(center, address_data.住所ふりがな1)]
              )
            ]
          ),
          line(stroke: (dash:"dashed"), length: 100%)
        )
      ],
      [
        #rect(
          width: 100%,
          stroke: (
            bottom: 0.5pt,
            top: 1.5pt,
            left: none,
            right: 1.5pt
          ),[
          電話 #h(10pt) #address_data.電話番号1
          ]
        )
      ]
    ),
    grid(
      columns: (5fr, 2fr),
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: 1.5pt,
            right: 0.5pt
          ),[
            #if (address_data.郵便番号1 == "") {
              [現住所 (〒 #h(20pt) - #h(20pt))]
            } else {
              [現住所 (〒 #text(tracking: 1pt, systemFontSize, address_data.郵便番号1))]
            }
            #pad(y: 0.2cm, align(center, text(inputFontSize, address_data.住所1)))
          ]
        )
      ],
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
            E-mail
            #pad(y: 0.3cm, align(center, address_data.Email1))
          ]
        )
      ]
    ),
    grid(
      columns: (5fr, 2fr),
      [
        #stack(
          rect(
            stroke: (
              bottom: none,
              top: none,
              left: 1.5pt,
              right: 0.5pt
            ),[
              #grid(
                columns: (1.5cm, 1fr),
                [ふりがな],
                [#align(center, address_data.住所ふりがな2)]
              )
            ]
          ),
          line(stroke: (dash:"dashed"), length: 100%)
        )
      ],
      [
        #rect(
          width: 100%,
          stroke: (
            bottom: 0.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
          電話 #h(10pt) #address_data.電話番号2
          ]
        )
      ]
    ),
    grid(
      columns: (5fr,2fr),
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 1.5pt,
            top: none,
            left: 1.5pt,
            right: 0.5pt
          ),[
           #if (address_data.郵便番号2 == "") {
              [連絡先 (〒 #h(20pt) - #h(20pt))]
            } else {
              [連絡先 (〒 #text(tracking: 1pt,systemFontSize, address_data.郵便番号2))]
            }
            #pad(y: 0.2cm, align(center, text(inputFontSize, address_data.住所2)))
          ]
        )
      ],
      [
        #rect(
          width: 100%,
          height: 1.8cm,
          stroke: (
            bottom: 1.5pt,
            top: none,
            left: none,
            right: 1.5pt
          ),[
            E-mail
            #pad(y: 0.3cm, align(center, address_data.Email2))
          ]
        )
      ]
    )
  )
}
