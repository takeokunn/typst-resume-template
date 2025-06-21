#import "template/layout.typ": systemFontSize, inputFontSize
#import "template/personal_info.typ": personal_details_block, photo_block
#import "template/address.typ": address_block
#import "template/history.typ": history_section_block, education_entry_block, work_entry_block, certification_entry_block, end_marker_block
#import "template/motivation.typ": motivation_block
#import "template/requests.typ": applicant_requests_block

#let profile_data = yaml("content/profile.yaml")
#let address_data = yaml("content/address.yaml")
#let education_data = yaml("content/education_history.yaml")
#let work_data = yaml("content/work_history.yaml")
#let certification_data = yaml("content/certifications.yaml")
#let motivation_requests_data = yaml("content/motivation_requests.yaml")

#let title_text = [#text(tracking: 1em, size: 14pt, [履歴書])]

#set text(font: "HackGen", size: systemFontSize)
#set page(paper: "jis-b5", margin: 1.5cm)

= #title_text

#move(
  dy: -1cm,
  stack(
    align(bottom,
      grid(
        columns: (5fr, 2fr),
        personal_details_block(profile_data),
        photo_block(profile_data)
      ),
    ),
    address_block(address_data),
    linebreak(),
    history_section_block(
      mode: "学歴・職歴",
      grid(
        for item in education_data {
          education_entry_block(item)
        },
        linebreak(),
        for item in work_data {
          work_entry_block(item)
        },
        end_marker_block()
      )
    ),
  ),
)
#pagebreak()

#stack(
  history_section_block(
    mode: "学歴・職歴",
    hegithLength: 5cm,
    [ #linebreak() ]
  ),
  linebreak(),
  history_section_block(
    mode: "免許・資格",
    hegithLength: 6.6cm,
    grid(
      for item in certification_data {
        certification_entry_block(item)
      },
      end_marker_block()
    )
  ),
  linebreak(),
  motivation_block(motivation_requests_data),
  linebreak(),
  applicant_requests_block(motivation_requests_data)
)
