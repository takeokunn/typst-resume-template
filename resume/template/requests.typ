#import "layout.typ": inputFontSize

#let applicant_requests_block(data) = {
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
        本人希望記入欄(特に給料・職種・勤務時間・勤務地・その他についての希望があれば記入)
        #linebreak()
        #set text(inputFontSize)
        #data.本人希望
      ]
    )
  )
}
