#let profile_data = yaml("content/profile.yaml")
#let overview_data = yaml("content/overview.yaml")
#let jobs_data = yaml("content/jobs.yaml")

#import "template/profile.typ": display_profile
#import "template/overview.typ": display_overview
#import "template/jobs.typ": display_jobs

#set text(font: "HackGen", size: 8pt)
#set table(inset: (y: 10pt, x: 1em))

#set page(
  paper: "a4",
  margin: (bottom: 1.0cm, top: 1.5cm, left: 1.2cm, right: 1.2cm),
)
#show heading.where(level: 1): it => {
  align(center, text(weight: 400, 1.8em, it.body))
}
#show heading.where(level: 2): it => {
  v(1em)
  text(weight: 700, 1.5em, it.body)
  v(-0.5em)
}
#show heading.where(level: 3): it => {
  v(1em)
  text(weight: 500, 1.2em, it.body)
  v(-0.5em)
  line(stroke: 0.5pt, length: 100%)
}

= 職務経歴書

// 個人情報
#display_profile(profile_data)

// 業務概要
#display_overview(overview_data)

// 業務詳細
#display_jobs(jobs_data)
