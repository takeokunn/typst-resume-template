#let display_profile(profile_data) = {
  table(
    columns: (0.15fr, 0.3fr, 0.3fr, 0.15fr, 0.3fr),
    rows: auto,
    stroke: 0.5pt,
    inset: (x: 7pt, y: 10pt),
    fill: (x, y) => if x==0 or y==0 {luma(222)},
    align: center+horizon,
    table.header([*フリガナ*], [#profile_data.kana], [*生年月日*], [*年齢*], [*最寄り駅*]),
    text(size: 1.3em)[氏名],
    text(size: 1.6em, profile_data.name),
    text(size: 1.3em, profile_data.birthday),
    text(size: 1.3em, profile_data.age),
    text(size: 1.2em, profile_data.nearest_station),
    text(size: 1.1em)[興味・関心],
    table.cell(colspan: 4, align: left)[#profile_data.skills],
    text(size: 1.1em)[趣味],
    table.cell(colspan: 4, align: left)[#profile_data.hobbies]
  )

  table(
    columns: (0.8fr, 2fr, 2fr, 2fr, 2fr, 2fr),
    rows: auto,
    stroke: 0.5pt,
    inset: (x: 7pt, y: 10pt),
    fill: (x, y) => if x==0 or y==0 {luma(222)},
    align: center,
    table.header([], [*環境(OS等)*], [*開発言語*], [*フレームワーク*], [*インフラ等*], [*ツール*]),
    align(horizon)[
      実務
      経験
    ],
    align(left, profile_data.experience.environments),
    align(left, profile_data.experience.languages),
    align(left, profile_data.experience.frameworks),
    align(left, profile_data.experience.infrastructure),
    align(left, profile_data.experience.tools)
  )
}
