#import "layout.typ": inputFontSize

#let motivation_block(data) = {
  stack(
    rect(
      stroke: (
        bottom: 1.5pt,
        top: 1.5pt,
        left: 1.5pt,
        right: 1.5pt
      ),
      height: 5cm,
      width: 100%,
      [
        志望の動機、特技、好きな学科、アピールポイントなど
        #linebreak()
        #set text(inputFontSize)
        #data.志望動機
      ]
    )
  )
}
